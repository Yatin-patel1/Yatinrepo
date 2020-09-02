package com.application.test;

import com.application.config.SpringRootConfig;
import com.application.dao.UserDAO;
import com.application.domain.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class TestUserDAODelete {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO=ctx.getBean(UserDAO.class);
        userDAO.delete(2);
        System.out.println("--------Data Deleted------");
    }    
}
