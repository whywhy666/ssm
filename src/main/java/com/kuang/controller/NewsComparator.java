package com.kuang.controller;

import com.kuang.pojo.News;
import com.kuang.pojo.Remark;

import java.text.SimpleDateFormat;
import java.util.Comparator;

public class NewsComparator implements Comparator {
    public int compare(Object o1, Object o2){
        News s1 = (News) o1;
        News s2 = (News) o2;
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义格式，不显示毫秒
        //Timestamp now = new Timestamp(System.currentTimeMillis());//获取系统当前时间
        String str1 = df.format(s1.getNewsTime());
        String str2 = df.format(s2.getNewsTime());
        return str2.compareTo(str1);
    }
}
