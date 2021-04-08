package com.study.shardingjdbc.model;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author Ryan
 * @Description TODO
 * @createTime 2021年03月28日
 */
@Data
public class MtoUser {
    private Long id;
    private String username;
    private String name;
    private String avatar;
    private String mobile;
    private String email;
    private String password;
    private Long status;
    private LocalDateTime created;
    private LocalDateTime updated;
    private LocalDateTime lastLogin;
    private Long gender;
    private Long role_id;
    private Long comments;
    private Long posts;
    private String signature;
}
