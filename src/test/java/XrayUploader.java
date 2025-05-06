import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class XrayUploader {

    private static final String XRAY_OAUTH_URL = "https://xray.cloud.getxray.app/api/v2/authenticate";
    private static final String XRAY_URL = "https://xray.cloud.getxray.app/api/v2/import/execution/cucumber";

    public static void main(String[] args) {
        String clientId = "C57CBAE4917F40FBB3C311960BBD8EDF"; // Replace with your client ID
        String clientSecret = "76a1f7ed0155fa3661471a556c860b1c4f43abe20e1b078073e1d9242285be13"; // Replace with your client secret
        String jsonFilePath = "target/cucumber-report.json"; // Replace with the path to your JSON file

        try {
            String accessToken = getAccessToken(clientId, clientSecret);
            if (accessToken != null) {
                uploadCucumberResults(accessToken, jsonFilePath);
            } else {
                System.out.println("Failed to obtain access token.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String getAccessToken(String clientId, String clientSecret) {
        try {
            URL url = new URL(XRAY_OAUTH_URL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setDoOutput(true);

            String postData = "{\"client_id\":\"" + clientId + "\",\"client_secret\":\"" + clientSecret + "\"}";
            connection.getOutputStream().write(postData.getBytes(StandardCharsets.UTF_8));

            // Read the response
            try (BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = br.readLine()) != null) {
                    response.append(line);
                }
                return response.toString(); // Adjust as necessary based on the response format
            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void uploadCucumberResults(String accessToken, String jsonFilePath) {
        try {
            // Read the Cucumber JSON file
            String jsonInputString = readJsonFile(jsonFilePath);

            // Create a URL connection
            URL url = new URL(XRAY_URL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("Authorization", "Bearer " + accessToken);
            connection.setDoOutput(true);

            // Write JSON data to the output stream
            try (var os = connection.getOutputStream()) {
                byte[] input = jsonInputString.getBytes(StandardCharsets.UTF_8);
                os.write(input, 0, input.length);
            }

            // Check the response code
            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                System.out.println("Cucumber test results uploaded successfully.");
            } else {
                System.out.println("Failed to upload test results. Response code: " + responseCode);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String readJsonFile(String jsonFilePath) throws IOException {
        StringBuilder contentBuilder = new StringBuilder();

        // Use try-with-resources to ensure resources are closed properly
        try (BufferedReader br = new BufferedReader(new FileReader(jsonFilePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                contentBuilder.append(line).append("\n"); // Append line breaks for readability
            }
        }

        return contentBuilder.toString().trim(); // Remove any trailing newline characters
    }
}