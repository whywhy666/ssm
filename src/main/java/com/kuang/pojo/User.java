package com.kuang.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private String userName;
    private String userPwd;
    private int userAdmin;
    private String userEmail;
    private String userPhone;

}
