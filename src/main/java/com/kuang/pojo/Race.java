package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Race {

    private int raceId;
    private String raceName;
    private Date raceDay;
    private Time raceTime;
    private String racePlace;
    private int raceIsend;

}
