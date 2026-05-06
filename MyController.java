package com.glow.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@RequestMapping("/books")
	public ModelAndView getBooksPage() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("books");
		return mav;
		
	}

	@RequestMapping("/checkout")
	public ModelAndView getCheckoutPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("checkout");
		return mav;
	}
	
	@RequestMapping("/mycart")
	public ModelAndView getMyCartPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mycart");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView getLoginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
}
