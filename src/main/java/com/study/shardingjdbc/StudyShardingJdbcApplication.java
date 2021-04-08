package com.study.shardingjdbc;

import com.study.shardingjdbc.annotation.ReadMaster;
import com.study.shardingjdbc.mapper.MtoUserMapper;
import com.study.shardingjdbc.model.MtoUser;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@MapperScan("com.study.shardingjdbc.mapper")
@RestController
public class StudyShardingJdbcApplication {

    @Autowired
    private MtoUserMapper mtoUserMapper;

    @GetMapping("/user")
    public List<MtoUser> user() {
        return mtoUserMapper.selectUserList();
    }

    @PostMapping("/user")
    @Transactional
    public List<MtoUser> save() {
        int insert = mtoUserMapper.insert();
        return mtoUserMapper.selectUserList();
    }

    @GetMapping("/user/list")
    @ReadMaster
    public List<MtoUser> list() {
        List<MtoUser> mtoUsers = mtoUserMapper.selectUserList();
        return mtoUsers;
    }

    public static void main(String[] args) {
        SpringApplication.run(StudyShardingJdbcApplication.class, args);
    }

}
