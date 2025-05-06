package za.co.bankzero.bankzero.utils;

import io.restassured.RestAssured;
import io.restassured.response.Response;

import java.io.IOException;

public class ClearUserData {
    public static String clearUserData(String phoneNumber) throws IOException {
        RestAssured.baseURI = "https://api-qa.bankzerosa.co.za";

        Response response = RestAssured.given()
                .queryParam("phonenumbers", phoneNumber)
                .get("/phoenix-test/zero/clearUserData");

        if (response.getStatusCode() == 200) {

            return "Success";

        }
        return null;
    }


}
