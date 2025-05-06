package za.co.bankzero.bankzero.utils;

import java.util.Random;

public class GenerateNumbers {

    public static  String generateCellPhoneNumber() {
        Random random = new Random();

        // South African cell phone numbers typically start with '0' followed by a network code
        // We will use '086' as the starting digits as specified
        String prefix = "086";

        // Generate the remaining 7 digits of the cell phone number
        StringBuilder phoneNumberBuilder = new StringBuilder(prefix);
        for (int i = 0; i < 7; i++) {
            phoneNumberBuilder.append(random.nextInt(10)); // Append a random digit from 0 to 9
        }

        return phoneNumberBuilder.toString();
    }

    public static int[] generateRandomPin(int length) {
        if (length <= 0 || length > 10) { // 10 unique digits (0-9)
            throw new IllegalArgumentException("Length must be between 1 and 10");
        }

        // Define characters for PIN generation
        String digits = "0123456789";

        Random random = new Random();
        int[] pinArray = new int[length];
        for (int i = 0; i < length; i++) {
            pinArray[i] = Character.getNumericValue(digits.charAt(random.nextInt(digits.length())));
        }

        return pinArray;
    }
}
