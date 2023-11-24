package com.wanou.common.utils;

import java.util.ArrayList;
import java.util.List;

public class StringDecollator {


    public static List<String> formatting(List<String> tags){

        List<String> format = new ArrayList<>();

        for (String tag : tags) {

            int index=tag.indexOf(",");

            int count = 0;
            while (true){
                if (index < 0){
                    break;
                }
                String substring = tag.substring(count,index);
                count = index+1;
                index = tag.indexOf(",",index+1);
                if (format.contains(substring)) break;
                format.add(substring);
            }
        }

        return format;
    }


    public static void main(String[] args) {
        List<String> strings = new ArrayList<>();
        strings.add("2,3,4,5,");
        strings.add("1,2,3,4,");
        List<String> formatting = formatting(strings);
        System.out.println(formatting);
    }
}
