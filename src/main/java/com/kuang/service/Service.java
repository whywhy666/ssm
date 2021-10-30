package com.kuang.service;

import com.kuang.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface Service {

    //增删改查

    //国家 奖牌榜
    int addCountry(Country country);
    int deleteCountryByName(String name);
    int updateCountry(Country country);
    Country queryCountryByName(String name);
    List<Country> queryAllCountry();

    //新闻
    int addNews(News news);
    int deleteNewsById(int id);
    int updateNews(News news);
    News queryNewsById(int id);
    List<News> queryAllNews();

    //比赛
    int addRace(Race race);
    int deleteRaceById(int id);
    int updateRace(Race race);
    Race queryRaceById(int id);
    List<Race> queryAllRace();
    List<Race> query0Race();
    List<Race> query1Race();

    //评论
    int addRemark(Remark remark);
    int deleteRemarkById(int id);
    int updateRemark(Remark remark);
    Remark queryRemarkById(int id);
    List<Remark> queryAllRemark();

    //用户
    int addUser(User user);
    int deleteUserByName(String name);
    int updateUser(User user);
    User queryUserByName(String name);
    List<User> queryAllUser();

}
