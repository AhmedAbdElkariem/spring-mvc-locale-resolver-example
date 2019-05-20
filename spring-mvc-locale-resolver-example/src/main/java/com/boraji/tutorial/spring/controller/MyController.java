package com.boraji.tutorial.spring.controller;

import com.boraji.tutorial.spring.entity.User;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

    @GetMapping("/")
    public String index(Model model) {

        return "common";
    }

    @GetMapping("/goBody")
    public String getBody(Model model) {
        addCommonAttributes(model);
        return "defBody";
    }
    
    @GetMapping("/testGet")
    public String testGet(Model model) {
        addCommonAttributes(model);
        return "testGet";
    }
    
    @PostMapping("/testPost")
    public String testPost(Model model) {
        addCommonAttributes(model);
        return "testPost";
    }
    

    @GetMapping("/display")
    public String fetchUserList(Model model) {

        List<User> users = new ArrayList<>();

        users.add(new User("Arun Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "A",
                "Palampur"));
        users.add(new User("Sonu Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "B",
                "Palampur"));
        users.add(new User("Pawan Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "C",
                "Palampur"));
        users.add(new User("Satish Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "D",
                "Palampur"));
        users.add(new User("Arrus Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "E",
                "Palampur"));
        users.add(new User("Rihan Kumar", "Arun", "Kumar", "Anu.png", "Aryan", "F",
                "Palampur"));
        model.addAttribute("userList", users);
        return "displayTag";

    }

    private void addCommonAttributes(Model model) {
        model.addAttribute("userImg", "user.png");
        model.addAttribute("date", LocalDate.now());
    }
}
