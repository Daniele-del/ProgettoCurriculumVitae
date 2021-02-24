package com.curriculum.controller;

import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
	public class GamesController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public GamesController() {
	}
	
@RequestMapping("/games")
public ModelAndView javaGames() {
	return new ModelAndView("games");
	}
}





