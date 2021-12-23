package com.study.shardingjdbc.model;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author Ryan
 * @Description TODO
 * @createTime 2021年03月28日
 */
@Data
public class MtoUser {
    private String id;
    private String username;
    private String name;
    private String avatar;
    private String mobile;
    private String email;
    private String password;
    private Long status;
    private Date created;
    private Date updated;
    private Date lastLogin;
    private Long gender;
    private Long role_id;
    private Long comments;
    private Long posts;
    private String signature;


    public static void main(String[] args) {
        System.out.println(Long.parseLong("680831425380876288") % 3);
    }
}
