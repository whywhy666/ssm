package com.kuang.dao;

import com.kuang.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface Mapper {

    //增删改查

    //国家 奖牌榜
    int addCountry(Country country);
    int deleteCountryByName(@Param("countryName") String name);
    int updateCountry(Country country);
    Country queryCountryByName(@Param("countryName") String name);
    List<Country> queryAllCountry();

    //新闻
    int addNews(News news);
    int deleteNewsById(@Param("newsId") int id);
    int updateNews(News news);
    News queryNewsById(@Param("newsId") int id);
    List<News> queryAllNews();

    //比赛
    int addRace(Race race);
    int deleteRaceById(@Param("raceId") int id);
    int updateRace(Race race);
    Race queryRaceById(@Param("raceId") int id);
    List<Race> queryAllRace();
    List<Race> query0Race();
    List<Race> query1Race();

    //评论
    int addRemark(Remark remark);
    int deleteRemarkById(@Param("remarkId") int id);
    int updateRemark(Remark remark);
    Remark queryRemarkById(@Param("remarkId") int id);
    List<Remark> queryAllRemark();

    //用户
    int addUser(User user);
    int deleteUserByName(@Param("userName") String name);
    int updateUser(User user);
    User queryUserByName(@Param("userName") String name);
    List<User> queryAllUser();

}
