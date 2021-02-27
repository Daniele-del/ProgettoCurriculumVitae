package com.curriculum.controller;

import javax.servlet.http.HttpServlet;


public class Tris extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private String giocatore;
	
	
	public Tris(String giocatore) {
	this.giocatore = giocatore;
	}

	public String getGiocatore() {
		return giocatore;
	}

	public void setGiocatore(String giocatore) {
		this.giocatore = giocatore;
	}
	
}
