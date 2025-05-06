package za.co.bankzero.bankzero.email;


import com.sun.mail.smtp.SMTPSendFailedException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.*;
import java.util.Properties;

public class EmailSender {
    public static void main(String[] args) throws IOException, MessagingException, InterruptedException {

        File dir = new File("./Automation Test Execution Reports");
        String zipDirName = "report.zip";
        String fileName = "./Automation Test Execution Reports/"+folderName()+"/testing-report.html";

        ZipFiles zipFiles = new ZipFiles();
        zipFiles.zipDirectory(dir, zipDirName);

        String host = "command_quality_mail_server";
        int port = 25;

        String from = "sender-email-address";

        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", String.valueOf(port));

        // Create session without authentication
        Session session = Session.getInstance(props, null);

        Properties properties = new Properties();
        try (InputStream input = new FileInputStream("src/test/resources/application.properties")) {
            properties.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println(properties.getProperty("emailRecepients"));

        try {
            BodyPart messageBodyPart1 = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            MimeBodyPart attachmentPart = new MimeBodyPart();


            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            String[] recipients = {"recipient1-email-address", "recipient2-email-address"};
            System.out.println("Emails"+System.getProperty("emailRecepients"));
            message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(properties.getProperty("emailRecepients")));

            message.setSubject("UAT :: Automation Report");



            File input = new File(fileName);


            // Read HTML content from the file
            Document doc = Jsoup.parse(input, "UTF-8", "");

            // Convert Document back to String

            String htmlString = doc.outerHtml();


            System.out.println(htmlString.split("Tags")[1].split("<script>")[0]);


            System.out.println();

            messageBodyPart1.setContent("<h2>QA Automation Testing Framework Results.</h2>\n", "text/html");


            //System.out.println(htmlContent);

            multipart.addBodyPart(messageBodyPart1);


            try {


                attachmentPart.attachFile("report.zip");
                System.out.println("This is the size "+attachmentPart.getSize());
                multipart.addBodyPart(attachmentPart);
            } catch (IOException e) {
                e.printStackTrace();
            }
            message.setContent(multipart);




            Transport.send(message);
            System.out.println("Email Sent");
            System.out.println("Emails"+System.getProperty("emailRecepients"));
        } catch (AddressException e) {
            throw new RuntimeException(e);
        } catch (SMTPSendFailedException e){

            System.out.println("Space Constraints");

            File input = new File(fileName);


            // Read HTML content from the file
            Document doc = Jsoup.parse(input, "UTF-8", "");

            // Convert Document back to String
            System.out.println("HTML");
            String htmlString = doc.outerHtml();

            BodyPart messageBodyPart1 = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            MimeBodyPart attachmentPart = new MimeBodyPart();


            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));

            String[] recipients = {"\"recipient1-email-address\", \"recipient2-email-address\""};
            System.out.println("Emails"+System.getProperty("emailRecepients"));
            message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(properties.getProperty("emailRecepients")));

            message.setSubject("UAT :: Automation Report Without Attachement ");

            messageBodyPart1.setContent("<h2>QA Automation Testing Framework Results.</h2>\n", "text/html");
            //System.out.println(htmlContent);



            multipart.addBodyPart(messageBodyPart1);

            message.setContent(multipart);




            Transport.send(message);



        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    private static String readHTMLFile(String filePath) throws IOException {

        //String htmlString = "</script>\n<div class=\"row\">\n<div class=\"col-lg-6 col-md-12 category-container\">\n<div class=\"card\">\n<div class=\"card-header\"><p>Tags</p></div>\n<div class=\"card-body pb-0 pt-0\"><table class=\"table table-sm table-bordered\">";

        StringBuilder content = new StringBuilder();
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                content.append(line).append("\n");
            }
        }
        return content.toString();//.substring(content.toString().indexOf(htmlString));
    }

    private static String folderName(){
        String directoryPath = "./Automation Test Execution Reports"; // Replace this with the path to your directory

        File directory = new File(directoryPath);
        String foldername = null;

        if (directory.exists() && directory.isDirectory()) {
            String[] subdirectories = directory.list((current, name) -> new File(current, name).isDirectory());

            if (subdirectories != null) {
                System.out.println("Folders in " + directoryPath + ":");
                for (String folder : subdirectories) {
                    System.out.println(folder);
                    foldername = folder;
                }
            } else {
                System.out.println("There are no folders in " + directoryPath);
            }
        } else {
            System.out.println("The specified directory does not exist or is not a directory.");
        }

        return foldername;
    }
}
