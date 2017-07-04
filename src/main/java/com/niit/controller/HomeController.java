package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.domain.Category;

@Controller
public class HomeController {
	@Autowired
	CategoryDao catServ;
	
	
	

	@RequestMapping("/")
	public ModelAndView showHomePage() {
		ModelAndView mv = new ModelAndView("home");
		List<Category> category=catServ.list();
		mv.addObject("categoryList",category);
		//mv.addObject("msg", "Welcome to ecommerce");
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView Home(Model model) {
		ModelAndView mv = new ModelAndView("home");
		
		mv.addObject("msg", "Welcome to my ecommerce Portal");
		return mv;
	}

	@RequestMapping("/aboutUs")
	public String aboutUs(Model model) {
		model.addAttribute("message", "Welcome to  about us");
		return "aboutUs";
	}

	@RequestMapping("/contactUs")
	public ModelAndView contactUs() {
		ModelAndView mv = new ModelAndView("contactUs");
		// mv.addObject("contactUsObj",contactUs);
		mv.addObject("message", "Welcome to   contact us");
		return mv;
	}

}
