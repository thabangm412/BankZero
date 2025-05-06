package za.co.bankzero.bankzero.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TimeStamps {

    public static String  generateTimeStamp(String myFormat, int additionalHours) {
        Calendar calender = Calendar.getInstance();
        calender.add(Calendar.HOUR, additionalHours);
        return new SimpleDateFormat(myFormat).format(calender.getTime());}
}
