package com.martin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
/*
 * author: Crunchify.com
 * 
 */
 
@Controller
public class MartinController {
 
	@RequestMapping("/index")
	public ModelAndView index() {
		 ModelAndView m = new ModelAndView("index.jsp");
	
		return m;
	}
}