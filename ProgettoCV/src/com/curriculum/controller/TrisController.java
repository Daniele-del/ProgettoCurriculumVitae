package com.curriculum.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	public class TrisController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
@RequestMapping	("/TrisController")
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException, ServletException {
	
	String nome = req.getParameter("name");
	String citta = req.getParameter("city");
	
	req.setAttribute("name", "pippo");
	req.setAttribute("city", "chicago");
	
	System.out.println(nome + citta);
	
	String destination = "games.jsp";
	
	RequestDispatcher requestDispatcher = req.getRequestDispatcher(destination);
	requestDispatcher.forward(req, resp);
	}
}
