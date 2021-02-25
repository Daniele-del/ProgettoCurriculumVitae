package com.curriculum.controller;

import javax.servlet.http.HttpServlet;


public class Tris extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private String nomeCella;
	private String giocatore;
	
	
	public Tris(String nomeCella, String giocatore) {
	this.setNomeCella(nomeCella);
	this.setGiocatore(giocatore);
}

	public String getNomeCella() {
		return nomeCella;
	}

	public void setNomeCella(String nomeCella) {
		this.nomeCella = nomeCella;
	}

	public String getGiocatore() {
		return giocatore;
	}

	public void setGiocatore(String giocatore) {
		this.giocatore = giocatore;
	}
	
}
