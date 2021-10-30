package com.kuang.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {

    private int newsId;
    private String newsTitle;
    private String newsUrl;
    private String newsHtml;
    private String newsJsp;
    private Timestamp newsTime;

}
