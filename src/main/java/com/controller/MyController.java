package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class MyController {
	@GetMapping("/")
	public ModelAndView login() {
		ModelAndView MV = new ModelAndView();
		MV.setViewName("index");
		return MV;
	}

}