package com.kuang.controller;

import com.kuang.pojo.News;
import com.kuang.pojo.Race;

import java.text.SimpleDateFormat;
import java.util.Comparator;

public class RaceComparator implements Comparator {
    public int compare(Object o1, Object o2){
        Race s1 = (Race) o1;
        Race s2 = (Race) o2;
//        Race s1 = myService.queryRaceById(1);
//        Race s2 = myService.queryRaceById(2);
//        String str1 =s1.getRaceDay().toString();
//        String str2 =s2.getRaceDay().toString();
//        String str3 =s1.getRaceTime().toString();
//        String str4 =s2.getRaceTime().toString();
//        System.out.println(str1);
//        System.out.println(str2);
//        System.out.println(str3);
//        System.out.println(str4);
        String str1 =s1.getRaceDay().toString();
        String str2 =s2.getRaceDay().toString();
        String str3 =s1.getRaceTime().toString();
        String str4 =s2.getRaceTime().toString();
        if(str2.compareTo(str1)==0){
            return str3.compareTo(str4);
        }else{
            return str1.compareTo(str2);
        }
    }
}
