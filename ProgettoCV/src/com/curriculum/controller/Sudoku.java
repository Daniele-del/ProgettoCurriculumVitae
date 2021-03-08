package com.curriculum.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServlet;


public class Sudoku extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Map<String,String> numeriPartenza = new TreeMap<>();
	public List<String> numeriErrati = new ArrayList<>();
	private List<String> soluzione = new ArrayList<>();
	
	
	
	public Map<String, String> getNumeriPartenza() {
		return numeriPartenza;
	}
	public void setNumeriPartenza(Map<String, String> numeriPartenza) {
		this.numeriPartenza = numeriPartenza;
	}
	public List<String> getSoluzione() {
		return soluzione;
	}
	public void setSoluzione(List<String> soluzione) {
		this.soluzione = soluzione;
	}
	



}
