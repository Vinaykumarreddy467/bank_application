package com.example.model.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class mainController {
	@GetMapping("/main")
	private String mainpage() {
		 return "main";
	}

}
