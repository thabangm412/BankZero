package za.co.bankzero.bankzero.utils;



import io.restassured.RestAssured;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class OTP {

    public static String    getOtp(String phoneNumber) throws InterruptedException {

        RestAssured.baseURI = "https://api-qa.bankzerosa.co.za";

        Response response = RestAssured.given()
                .queryParam("phoneNumbers", phoneNumber)
                .queryParam("timestamp", System.currentTimeMillis())
                .header("Cache-Control", "no-cache")
                .get("/phoenix-test/zero/otplatest");

        if (response.getStatusCode() == 200) {
            JsonPath jsonPath = new JsonPath(response.getBody().asString());
            String otp = jsonPath.getString("otp");


            if (otp != null && otp.length() < 5) {
                otp = String.format("%05d", Integer.parseInt(otp));
            }
            return otp;
        }
        return null;
    }

}
