package za.co.bankzero.bankzero.aws_s3;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.yaml.snakeyaml.Yaml;
import software.amazon.awssdk.auth.credentials.ProfileCredentialsProvider;
import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;
import software.amazon.awssdk.services.s3.model.S3Exception;
import za.co.bankzero.bankzero.xray.EnvironmentConfig;

import java.io.File;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Component
public class UploadToS3 {
    private static final Logger log = LoggerFactory.getLogger(UploadToS3.class);
    private S3Client s3Client ;



    public UploadToS3() {
        ProfileCredentialsProvider credentialsProvider = ProfileCredentialsProvider.create();
        Region region = Region.EU_WEST_1;
        s3Client = S3Client.builder()
                .region(region)
                .credentialsProvider(credentialsProvider)
                .build();
    }


    public void putS3Object(String objectKey, String objectPath) {
        try {
            String bucketName = getProperty("bucketName");
            Map<String, String> metadata = new HashMap<>();
            metadata.put("x-amz-meta-myVal", "test");

            PutObjectRequest putOb = PutObjectRequest.builder()
                    .bucket(bucketName)
                    .key( dateNameFolder() + "/" + LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")) + "-" + objectKey )
                    .metadata(metadata)
                    .build();

            s3Client.putObject(putOb, RequestBody.fromFile(new File(objectPath)));
            log.info("Successfully placed " + objectKey + " into bucket " + bucketName);

        } catch (S3Exception e) {
            log.error(e.getMessage());
            System.exit(1);
        }
    }
    public String dateNameFolder() {
        LocalDate date = LocalDate.now(); // Define the desired format
        String pattern = "dd-MMM-yyyy";
        // Create a formatter with the desired format and locale
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern, Locale.ENGLISH); // Format the LocalDate object
        return date.format(formatter);
    }
    public String getProperty(String name) {
        Yaml yaml = new Yaml();
        ApplicationContext context = new AnnotationConfigApplicationContext(EnvironmentConfig.class);

        // Retrieve the Environment bean
        Environment environment = context.getBean(Environment.class);

//        String activeProfiles="-"+environment.getActiveProfiles()[0];
        try (InputStream inputStream = getClass().getResourceAsStream("/application-sit.yml")) {
            Map<String, Object> yamlData = yaml.load(inputStream);

            return (String) yamlData.get(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
