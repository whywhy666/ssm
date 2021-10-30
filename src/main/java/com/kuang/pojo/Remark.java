package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Remark {

    private int remarkId;
    private String remarkName;
    private String remarkContent;
    private Timestamp remarkTime;

}
