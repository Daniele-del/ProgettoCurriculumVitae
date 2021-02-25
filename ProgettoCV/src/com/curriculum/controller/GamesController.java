package com.curriculum.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
	public class GamesController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	int count = 0;
	private String winner;
	private String nomeGioco;
	private String nomeCella; 
	private String giocatore;
	private String[] tris = {"cella0","cella1","cella2","cella3","cella4","cella5","cella6","cella7","cella8"};
	private String[] trisReset = {"cella0","cella1","cella2","cella3","cella4","cella5","cella6","cella7","cella8"};
	
	public GamesController() {

	}
	
@RequestMapping("/games")
	public ModelAndView javaGames() {
	
	return new ModelAndView("games");
}

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException, ServletException {
	
	System.out.println("sono nel doPost!");
	
	nomeGioco = req.getParameter("nomeGioco");
	
	if(nomeGioco.equals("tris")) {
		nomeCella = req.getParameter("nomeCella");
		giocatore = req.getParameter("giocatore");
		if(giocatore.equals("reset")) {
			tris = trisReset.clone();
		}else {
			metodoTris();
		}
	}	

	req.setAttribute("winner", winner);
	
	String destination = "games.jsp";

	RequestDispatcher requestDispatcher = req.getRequestDispatcher(destination);
	requestDispatcher.forward(req, resp);
	}

	public void metodoTris() {
		for(int i = 0; i < tris.length; i++) {
			if(tris[i].equals(nomeCella)) {tris[i] = giocatore; count++;}
		}
		for(int i = 0; i < tris.length; i++) {
			if(tris[0].equals(giocatore) && tris[1].equals(giocatore) && tris[2].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[3].equals(giocatore) && tris[4].equals(giocatore) && tris[5].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[6].equals(giocatore) && tris[7].equals(giocatore) && tris[8].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[0].equals(giocatore) && tris[3].equals(giocatore) && tris[6].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[1].equals(giocatore) && tris[4].equals(giocatore) && tris[7].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[2].equals(giocatore) && tris[5].equals(giocatore) && tris[8].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[2].equals(giocatore) && tris[4].equals(giocatore) && tris[6].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
			if(tris[0].equals(giocatore) && tris[4].equals(giocatore) && tris[8].equals(giocatore)) { 
				System.out.println( giocatore + " ha vinto!");
				winner = giocatore;
				break;
			}
		}
		if(count == 9 && winner == null) {System.out.println("Pareggio");}		
	}
}





