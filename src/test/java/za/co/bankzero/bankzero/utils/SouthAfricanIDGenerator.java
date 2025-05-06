package za.co.bankzero.bankzero.utils;

import java.util.Calendar;
import java.util.Random;

public class SouthAfricanIDGenerator {
    public static String generateRandomSouthAfricanId() {
        String year = generateRandomYear();
        String month = generateRandomMonth();
        String day = generateRandomDay();
        String sequence = generateRandomSequence();
        String citizenship = generateRandomCitizenshipStatus();

        String withoutCheckDigit = year + month + day + sequence + citizenship + "8";
        String idNumber = withoutCheckDigit + findValidCheckDigit(withoutCheckDigit);

        return idNumber;
    }

    private static String generateRandomYear() {
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        int randomYear = currentYear - new Random().nextInt(42) - 18; // Generate between 18 and 59 years old
        return String.format("%02d", randomYear % 100);
    }

    private static String generateRandomMonth() {
        int randomMonth = new Random().nextInt(12) + 1;
        return String.format("%02d", randomMonth);
    }

    private static String generateRandomDay() {
        int randomDay = new Random().nextInt(31) + 1;
        return String.format("%02d", randomDay);
    }


    private static String generateRandomSequence() {
        int sequenceValue = new Random().nextInt(5000);
        return String.format("%04d", sequenceValue);
    }

    private static String generateRandomCitizenshipStatus() {
        return "0";

    }


    public static int findValidCheckDigit(String number) {
        int candidate = 0;
        do {
            if (calculateCheckDigit(number + candidate)) {
                return candidate;
            }
            candidate++;
        } while (true);
    }

    public static boolean calculateCheckDigit(String number) {
        int checksum = Character.getNumericValue(number.charAt(number.length() - 1));
        int total = 0;

        for (int i = number.length() - 2; i >= 0; i--) {
            int sum = 0;
            int digit = Character.getNumericValue(number.charAt(i));
            if (i % 2 == number.length() % 2) {
                digit = digit * 2;
                if (digit > 9) {
                    digit -= 9;
                }
            }

            sum = digit / 10 + digit % 10;
            total += sum;
        }

        return total % 10 != 0 ? 10 - total % 10 == checksum : checksum == 0;
    }
}