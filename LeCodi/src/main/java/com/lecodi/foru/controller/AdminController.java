package com.lecodi.foru.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin")
public class AdminController {

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String goMain(HttpSession session){
		return "admin/mainPage";
	}
	
}
