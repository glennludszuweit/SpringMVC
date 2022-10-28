package com.springboot.conference.controller;

import com.springboot.conference.model.User;
import org.springframework.web.bind.annotation.*;

@RestController
public class UserController {
    @GetMapping("/user")
    public User getUsers(
            @RequestParam(value = "firstName", defaultValue = "Glenn Harry") String firstName,
            @RequestParam(value = "lastName", defaultValue = "Ludszuweit") String lastName,
            @RequestParam(value = "age", defaultValue = "35") int age
    ) {
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setAge(age);
        return user;
    }

    @PostMapping("/user")
    public User addUser(User user) {
        return user;
    }
}
