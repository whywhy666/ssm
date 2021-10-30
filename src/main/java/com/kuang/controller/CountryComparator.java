package com.kuang.controller;

import com.kuang.pojo.Country;
import com.kuang.pojo.Remark;

import java.text.SimpleDateFormat;
import java.util.Comparator;

public class CountryComparator implements Comparator {

    public int compare(Object o1, Object o2){
        Country s1 = (Country)o1;
        Country s2 = (Country)o2;
        if(s1.getCountryAu()==s2.getCountryAu()){
            if(s1.getCountryAg()==s2.getCountryAg()){
                return s2.getCountryCu()-s1.getCountryCu();
            }
            else{
                return s2.getCountryAg()-s1.getCountryAg();
            }
        }
        else{
            return s2.getCountryAu()-s1.getCountryAu();
        }
    }

}
