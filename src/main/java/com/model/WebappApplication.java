package com.model;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.OnlineBanking;

@SpringBootApplication
public class WebappApplication {
    public static void main(String[] args) {
        SpringApplication.run(WebappApplication.class, args);
        
        System.setProperty("server.servlet.context-path", "/banking");
        SpringApplication.run(.class, args);
    }
}
