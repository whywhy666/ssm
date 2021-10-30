package com.kuang.controller;

import com.kuang.pojo.Country;
import com.kuang.pojo.Remark;

import java.text.SimpleDateFormat;
import java.util.Comparator;

public class RemarkComparator implements Comparator {
    public int compare(Object o1, Object o2){
        Remark s1 = (Remark)o1;
        Remark s2 = (Remark)o2;
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义格式，不显示毫秒
        //Timestamp now = new Timestamp(System.currentTimeMillis());//获取系统当前时间
        String str1 = df.format(s1.getRemarkTime());
        String str2 = df.format(s2.getRemarkTime());
        return str2.compareTo(str1);
    }
}
