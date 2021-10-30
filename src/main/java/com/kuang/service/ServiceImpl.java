package com.kuang.service;

import com.kuang.dao.Mapper;
import com.kuang.pojo.*;

import java.sql.Date;
import java.util.List;

public class ServiceImpl implements Service{

    private Mapper Mapper;

    public void setMapper(com.kuang.dao.Mapper Mapper) {
        this.Mapper = Mapper;
    }

    @Override
    public int addCountry(Country country) {
        return Mapper.addCountry(country);
    }

    @Override
    public int deleteCountryByName(String name) {
        return Mapper.deleteCountryByName(name);
    }

    @Override
    public int updateCountry(Country country) {
        return Mapper.updateCountry(country);
    }

    @Override
    public Country queryCountryByName(String name) {
        return Mapper.queryCountryByName(name);
    }

    @Override
    public List<Country> queryAllCountry() {
        return Mapper.queryAllCountry();
    }

    @Override
    public int addNews(News news) {
        return Mapper.addNews(news);
    }

    @Override
    public int deleteNewsById(int id) {
        return Mapper.deleteNewsById(id);
    }

    @Override
    public int updateNews(News news) {
        return Mapper.updateNews(news);
    }

    @Override
    public News queryNewsById(int id) {
        return Mapper.queryNewsById(id);
    }

    @Override
    public List<News> queryAllNews() {
        return Mapper.queryAllNews();
    }

    @Override
    public int addRace(Race race) {
        return Mapper.addRace(race);
    }

    @Override
    public int deleteRaceById(int id) {
        return Mapper.deleteRaceById(id);
    }

    @Override
    public int updateRace(Race race) {
        return Mapper.updateRace(race);
    }

    @Override
    public Race queryRaceById(int id) {
        return Mapper.queryRaceById(id);
    }

    @Override
    public List<Race> queryAllRace() {
        return Mapper.queryAllRace();
    }

    @Override
    public List<Race> query0Race() {
        return Mapper.query0Race();
    }

    @Override
    public List<Race> query1Race() {
        return Mapper.query1Race();
    }

    @Override
    public int addRemark(Remark remark) {
        return Mapper.addRemark(remark);
    }

    @Override
    public int deleteRemarkById(int id) {
        return Mapper.deleteRemarkById(id);
    }

    @Override
    public int updateRemark(Remark remark) {
        return Mapper.updateRemark(remark);
    }

    @Override
    public Remark queryRemarkById(int id) {
        return Mapper.queryRemarkById(id);
    }

    @Override
    public List<Remark> queryAllRemark() {
        return Mapper.queryAllRemark();
    }

    @Override
    public int addUser(User user) {
        return Mapper.addUser(user);
    }

    @Override
    public int deleteUserByName(String name) {
        return Mapper.deleteUserByName(name);
    }

    @Override
    public int updateUser(User user) {
        return Mapper.updateUser(user);
    }

    @Override
    public User queryUserByName(String name) {
        return Mapper.queryUserByName(name);
    }

    @Override
    public List<User> queryAllUser() {
        return Mapper.queryAllUser();
    }

}
