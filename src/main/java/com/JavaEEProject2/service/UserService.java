package com.JavaEEProject2.service;

import com.JavaEEProject2.mapper.UserMapper;
<<<<<<< HEAD
import com.JavaEEProject2.model.User;
=======
import com.JavaEEProject2.model.Users;
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

// Created by IntelliJ IDEA.
//User: lhz
//Date: 2019/5/5 
//Time: 20:06
//To change this template use File | Settings | File Templates.
@Service
@Component
public class UserService {
    @Autowired
    private UserMapper userMapper;

<<<<<<< HEAD
    public List<User> selectAll(){
        List<User> list=userMapper.selectAll();
        return list;
    }

    public int insertUser(String name,String password){
        User user = new User();
        user.setUser_name(name);
        user.setUser_password(password);
        return userMapper.insertUser(user);
    }
    public User selectUser(String userid){
        User user=userMapper.selectUser(Integer.valueOf(userid));
        return user;
    }
=======
    public List<Users> selectAll(){
        List<Users> list=userMapper.selectAll();
        return list;
    }


>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
}
