package com.example.model.controller;

import com.example.model.model.User;
import com.example.model.service.UserService;

import org.hibernate.usertype.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/userLogin")
    public String showUserLogin() {
        return "userLogin"; // Return the JSP page for login
    }

    @PostMapping("/userLogin")
    public String loginUser(UserType user, Model model) {
        User foundUser = userService.findUserById(user.getUserId());
        if (foundUser != null && foundUser.getPassword().equals(user.getPassword())) {
            // Successful login logic
            return "userDashboard"; // Redirect to user dashboard
        } else {
            model.addAttribute("message", "Invalid credentials");
            return "userLogin"; // Return to login page with error message
        }
    }

    @GetMapping("/register")
    public String showRegistration() {
        return "register"; // Return the JSP page for registration
    }

    @PostMapping("/register")
    public String registerUser(User user, Model model) {
        userService.saveUser(user);
        return "registrationSuccess"; // Redirect to success page
    }
}
