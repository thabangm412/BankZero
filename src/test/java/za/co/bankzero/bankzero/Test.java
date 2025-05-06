package za.co.bankzero.bankzero;


import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class Test {

    public static void main(String[] args) {
        // SMTP server information

        String host = "smtp.office365.com";
        String port = "587";
        String username = "test@commandquality.co.za";
        String password = "F.706530773179ox";

        // Recipient's email ID and subject line
        String to = "glen@commandquality.co.za";
        String subject = "Test Email from Java";
        String body = "Hello, this is a test email from Java!";

        // Properties for SMTP configuration
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true"); // TLS
        props.put("mail.smtp.ssl.trust", "smtp.office365.com");

        // Create a session with the SMTP server
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Create a new email message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(body);

            // Send the email
            Transport.send(message);
            System.out.println("Email sent successfully!");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}