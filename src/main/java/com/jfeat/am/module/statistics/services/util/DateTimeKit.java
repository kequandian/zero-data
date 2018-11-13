package com.jfeat.am.module.statistics.services.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by vincent on 2018/11/13.
 */
public class DateTimeKit {
    static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");

    public static String formatDateTime(Date date){
        return simpleDateFormat.format(date);
    }
}
