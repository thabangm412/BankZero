package za.co.bankzero.bankzero.xray;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.test.web.reactive.server.WebTestClient;

import java.util.Base64;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class TokenDTO {
    private String client_id;
    private String client_secret;

    public static void main(String[] args) {
        String url = "token-url";
        String clientId = "'alskfdadsfa''";
        String clientSecret = "safsdhfmxzzcx>";

        WebTestClient.ResponseSpec responseSpec = WebTestClient
                .bindToServer()
                .baseUrl(url)
                .build()
                .post()
                .uri("/oauth2/token")
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .header("Authorization", "Basic " + Base64.getEncoder().encodeToString((clientId + ":" + clientSecret).getBytes()))
                .bodyValue("grant_type=client_credentials&scope=corporate")
                .exchange();

        responseSpec.expectStatus().isOk();
        responseSpec.expectBody().jsonPath("$.access_token").exists();
        responseSpec.expectBody().jsonPath("$.token_type").isEqualTo("bearer");
        // Add more assertions based on the expected structure of the response.
    }
}

