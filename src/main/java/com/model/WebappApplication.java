package com.model;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WebappApplication {
    public static void main(String[] args) {
        SpringApplication.run(WebappApplication.class, args);
        System.out.println("hi");
        System.setProperty("server.servlet.context-path", "/banking");
        SpringApplication.run(WebappApplication.class, args);
    }
}
