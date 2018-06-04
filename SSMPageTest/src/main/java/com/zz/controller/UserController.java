package com.zz.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zz.service.UserService;

@Controller
public class UserController {

	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("test")
	public String myTest() {
		return "test";
	}
	
	@RequestMapping("all")
	public String findAll(@RequestParam(value="currPage",defaultValue="1",required=false) int currPage, Model model) {
//	@RequestMapping("all_{currPage}")
//	public String findAll(@PathVariable(value="currPage") int currPage, Model model) {
		model.addAttribute("userPage", userService.selectByPage(currPage));
		return "UserAll";
	}
	
}
