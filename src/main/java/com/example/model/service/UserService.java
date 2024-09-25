package com.example.model.service;

import com.example.model.model.User;
import com.example.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User findUserById(String userId) {
        return userRepository.findByUserId(userId);
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
