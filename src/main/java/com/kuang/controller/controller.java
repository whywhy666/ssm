package com.kuang.controller;

import com.kuang.pojo.*;
import com.kuang.service.Service;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

@Controller
public class controller{

    @Autowired
    @Qualifier("ServiceImpl")
    private Service myService;

    @RequestMapping("/shouye")
    public String shouye(Model model){
        List<Country> listcountry = myService.queryAllCountry();
        Collections.sort(listcountry, new CountryComparator());
        List<Country> listCountry = listcountry.subList(0, 5);
        model.addAttribute("listCountry", listCountry);

        List<Race> listrace = myService.query0Race();
        Collections.sort(listrace, new RaceComparator());
        List<Race> listRace = listrace.subList(0, 5);
        model.addAttribute("listRace", listRace);

        List<News> listnews = myService.queryAllNews();
        Collections.sort(listnews, new NewsComparator());
        List<News> listNews1 = listnews.subList(0, 3);
        int cnt=1;
        for (News news : listNews1) {
            if(cnt==1) model.addAttribute("News1",news);
            else if(cnt==2) model.addAttribute("News2",news);
            else model.addAttribute("News3",news);
            cnt++;
        }
        List<News> listNews = listnews.subList(3, 8);
        model.addAttribute("listNews", listNews);

        List<Remark> listremark= myService.queryAllRemark();
        Collections.sort(listremark, new RemarkComparator());
        List<Remark> listRemark = listremark.subList(0, 4);
        model.addAttribute("listRemark", listRemark);

        return "homepage";
    }

    @RequestMapping("/shouye/remark")
    public String shouyeremark(HttpSession session,String content){
        Remark remark=new Remark();
        remark.setRemarkContent(content);
        User user=new User();
        user=(User)session.getAttribute("User");
        remark.setRemarkName(user.getUserName());
        remark.setRemarkTime(new Timestamp(System.currentTimeMillis()));
        myService.addRemark(remark);
        return "redirect:/shouye";
    }

    @RequestMapping("/shouye/login")
    public String shouyelogin() {
        return "login";
    }

    @RequestMapping("/shouye/checklogin")
    public String shouyechecklogin(String userName,String userPwd,Model model,HttpSession session){
        User user1=myService.queryUserByName(userName);
        if(user1==null||!(user1.getUserPwd().equals(userPwd))){
            model.addAttribute("flag",true);
            return "login";
        }
        else{
            session.setAttribute("User",user1);
            return "redirect:/shouye";
        }
    }

    @RequestMapping("/shouye/logup")
    public String shouyelogup() {
        return "logup";
    }

    @RequestMapping("/shouye/checklogup")
    public String shouyechecklogup(String user_Name,Model model,HttpSession session,
                                   String user_Pwd,String user_Pd,String user_Email,String user_Phone){
        User user1=myService.queryUserByName(user_Name);
        System.out.println(user1);
        if(user1==null){
            if(!(user_Pwd.equals(user_Pd))){
                model.addAttribute("flag",1);
                return "logup";
            }
            else{
                User user=new User();
                user.setUserName(user_Name);
                user.setUserEmail(user_Email);
                user.setUserPhone(user_Phone);
                user.setUserPwd(user_Pwd);
                user.setUserAdmin(0);
                myService.addUser(user);
                session.setAttribute("User",user);
                return "redirect:/shouye";
            }
        }
        else{
            model.addAttribute("flag",0);
            return "logup";
        }
    }

    @RequestMapping("/shouye/admin")
    public String shouyeadmin(){
        return "admin";
    }

    @RequestMapping("/shouye/sy")
    public String shouyesy(){
        return "redirect:/shouye";
    }

    @RequestMapping("/shouye/country")
    public String shouyecountry(Model model){
        List<Country> listCountry=myService.queryAllCountry();
        model.addAttribute("listCountry",listCountry);
        return "country";
    }

    @RequestMapping("/shouye/race")
    public String shouyerace(Model model){
        List<Race> listRace = myService.queryAllRace();
        model.addAttribute("listRace",listRace);
        for (Race race : listRace) {
            System.out.println(race);
        }
        return "race";
    }

    @RequestMapping("/shouye/queryRace")
    public String shouyequery(int isend,Model model){
        if(isend==0){
            List<Race> listRace=myService.query0Race();
            for (Race race : listRace) {
                System.out.println(race);
            }
            model.addAttribute("listRace",listRace);
        }else{
            List<Race> listRace=myService.query1Race();
            for (Race race : listRace) {
                System.out.println(race);
            }
            model.addAttribute("listRace",listRace);
        }
        return "race";
    }

    @RequestMapping("/shouye/admincountry")
    public String shouyeadmincountry(Model model)
    {
        List<Country> listCountry=myService.queryAllCountry();
        model.addAttribute("listCountry",listCountry);
        return "admincountry";
    }

    @RequestMapping("/shouye/adminrace")
    public String shouyeadminrace(Model model){
        List<Race> listRace=myService.queryAllRace();
        model.addAttribute("listRace",listRace);
        return "adminrace";
    }

    @RequestMapping("/shouye/adminnews")
    public String shouyeadminnews(){
        return "adminnews";
    }

    @RequestMapping("/shouye/toUpdateRace")
    public String shouyetoUpdateRace(Model model, int id) {
        Race race = myService.queryRaceById(id);
        model.addAttribute("race",race);
        return "updateRace";
    }

    @RequestMapping("/shouye/updateRace")
    public String updateRace(Model model, Race race) {
        myService.updateRace(race);
        return "redirect:/shouye/adminrace";
    }

    @RequestMapping("/shouye/delRace")
    public String deleteRace(int id) {
        myService.deleteRaceById(id);
        return "redirect:/shouye/adminrace";
    }

    @RequestMapping("/shouye/updateCountry")
    public String updateCountry(Model model, Country country) {
        System.out.println(country);
        Country country1=myService.queryCountryByName(country.getCountryName());
        country1.setCountryAu(country1.getCountryAu()+country.getCountryAu());
        country1.setCountryAg(country1.getCountryAg()+country.getCountryAg());
        country1.setCountryCu(country1.getCountryCu()+country.getCountryCu());
        myService.updateCountry(country1);
        return "redirect:/shouye/admincountry";
    }

    @RequestMapping("/shouye/adminuser")
    public String shouyeadminuser(Model model){
        List<User> listUser=myService.queryAllUser();
        model.addAttribute("listUser",listUser);
        return "adminuser";
    }

    @RequestMapping("/shouye/toUpdateUser")
    public String shouyetoUpdateUser(Model model, String name) {
        User user = myService.queryUserByName(name);
        model.addAttribute("user",user);
        return "updateUser";
    }

    @RequestMapping("/shouye/updateUser")
    public String updateUser(Model model, User user) {
        myService.updateUser(user);
        return "redirect:/shouye/adminuser";
    }

    @RequestMapping("/shouye/delUser")
    public String deleteUser(String name) {
        myService.deleteUserByName(name);
        return "redirect:/shouye/adminuser";
    }

    @RequestMapping("/shouye/news1")
    public String shouyenews1(String html){
        return html;
    }

    @RequestMapping("/shouye/news2")
    public String shouyenews2(String html){
        return html;
    }

    @RequestMapping("/shouye/news3")
    public String shouyenews3(String html){
        return html;
    }

    @RequestMapping("/shouye/news4")
    public String shouyenews4(String html){
        return html;
    }

    @RequestMapping("/shouye/news5")
    public String shouyenews5(String html){
        return html;
    }

    @RequestMapping("/shouye/news6")
    public String shouyenews6(String html){
        return html;
    }

    @RequestMapping("/shouye/news7")
    public String shouyenews7(String html){
        return html;
    }

    @RequestMapping("/shouye/news8")
    public String shouyenews8(String html){
        return html;
    }

    @RequestMapping("/shouye/news9")
    public String shouyenews9(String html){
        return html;
    }

    @RequestMapping("/shouye/news10")
    public String shouyenews10(String html){
        return html;
    }

    @RequestMapping("/shouye/news11")
    public String shouyenews11(String html){
        return html;
    }
}