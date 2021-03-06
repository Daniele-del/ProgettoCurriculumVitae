package com.curriculum.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class GamesController extends HttpServlet {
	private static final int NSUDOKU = 5;
	private static final long serialVersionUID = 1L;
	private String arrays;
	private String nomeGioco;
	int count = 0;
	private String[] tris = { "cella0", "cella1", "cella2", "cella3", "cella4", "cella5", "cella6", "cella7",
			"cella8" };
	private String[] trisReset = { "cella0", "cella1", "cella2", "cella3", "cella4", "cella5", "cella6", "cella7",
			"cella8" };

	String json = null;
	private List<Sudoku> sudokus = new LinkedList<>();
	private List<String> submitList = new ArrayList<>();
	private int countSudoku = 0;

	public GamesController() {
		for (int i = 0; i < NSUDOKU; i++) {
			sudokus.add(new Sudoku());
		}
		initSudoku();
	}

	@RequestMapping("/games")
	public ModelAndView javaGames() {

		return new ModelAndView("games");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		nomeGioco = req.getParameter("nomeGioco");

		if (nomeGioco.equals("tris")) {
			String winner;
			String giocatore;
			String nomeCella;
			nomeCella = req.getParameter("nomeCella");
			giocatore = req.getParameter("giocatore");
			if (giocatore.equals("reset")) {
				tris = trisReset.clone();
				count = 0;
				winner = null;
			} else {
				winner = metodoTris(nomeCella, giocatore);
			}
			if (winner != null) {
				resp.getWriter().write(winner);
			}
			String destination = "games.jsp";
			req.getRequestDispatcher(destination);
		}

		if (nomeGioco.equals("sudoku")) {
			int tmpCount = countSudoku == 0 ? NSUDOKU - 1 : countSudoku - 1;
			if (req.getParameter("reset") != null && req.getParameter("reset").equals("soluzione")) {

				showSolution(tmpCount);
				resp.getWriter().write(json);

			} else {
				arrays = req.getParameter("matrix");
				String risultato = metodoSudoku(tmpCount);
				resp.getWriter().write(risultato);
			}

			String destination = "games.jsp";
			req.getRequestDispatcher(destination);

		}
		if (nomeGioco.equals("startSudoku")) {
			if (req.getParameter("reset") != null && req.getParameter("reset").equals("true")) {
				if (countSudoku == 0) {
					countSudoku = NSUDOKU - 1;
				} else {
					countSudoku--;
				}
			}
			if (req.getParameter("reset") != null && req.getParameter("reset").equals("all")) {
				resetSudokuVar();
			} else {
				numeriStart();
				resp.getWriter().write(json);
			}

			String destination = "games.jsp";
			req.getRequestDispatcher(destination);
		}

	}

	private void showSolution(int tmpCount) {
		ArrayList<String> sol = (ArrayList<String>) sudokus.get(tmpCount).getSoluzione();
		String jsonStr = JSONArray.toJSONString(sol);
		Map<String, String> jsonSol = new HashMap<>();
		jsonSol.put("soluzione", jsonStr);
		mapToJson(jsonSol);
	}

	private void resetSudokuVar() {
		json = null;
		submitList.clear();
		countSudoku = 0;
	}

	private void numeriStart() {
		mapToJson(sudokus.get(countSudoku).getNumeriPartenza());

		countSudoku++;
		if (countSudoku == NSUDOKU) {
			countSudoku = 0;
		}
	}

	private void mapToJson(Map<String, String> initialTab) {
		ObjectMapper objectMapper = new ObjectMapper();

		try {
			json = objectMapper.writeValueAsString(initialTab);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
	}

	public String metodoTris(String nomeCella, String giocatore) {
		String winner = null;
		for (int i = 0; i < tris.length; i++) {
			if (tris[i].equals(nomeCella)) {
				tris[i] = giocatore;
				count++;
				break;
			}
		}

		for (int i = 0; i <= 6; i = i + 3) {
			if (tris[i].equals(giocatore) && tris[i + 1].equals(giocatore) && tris[i + 2].equals(giocatore)) {
				winner = giocatore;
				break;
			}

		}
		for (int i = 0; i < 3; i++) {
			if (tris[i].equals(giocatore) && tris[i + 3].equals(giocatore) && tris[i + 6].equals(giocatore)) {
				winner = giocatore;
				break;
			}
		}
		for (int i = 0; i <= 2; i += 2) {
			int shift = 4 - i;

			if (tris[i].equals(giocatore) && tris[i + shift].equals(giocatore)
					&& tris[i + shift * 2].equals(giocatore)) {
				winner = giocatore;
				break;
			}
		}

		if (count == 9 && winner == null) {
			winner = "PAREGGIO";
		}
		return winner;
	}

	public String metodoSudoku(int currentSudoku) {
		String finalResult = "";
		boolean splitResult = splitterSubmit();
		if (!splitResult) {
			finalResult = "Sudoku incompleto";
			return finalResult;
		}

		if (splitResult == true && sudokus.get(currentSudoku).getSoluzione().equals(submitList)) {
			finalResult = "Tutto giusto! Complimenti!";
		} else {
			finalResult = "Sono presenti errori";
		}
		return finalResult;
	}

	public boolean splitterSubmit() {
		submitList.clear();
		List<String> numberList = new ArrayList<>();
		String[] split;
		split = arrays.split(",");
		numberList = Arrays.asList(split);
		for (String num : numberList) {
			if (num.equals("") || split.length < 81) {
				return false;
			}
		}
		submitList.addAll(numberList);
		return true;
	}

	public void initSudoku() {
		SudokuInitializer sudInit = new SudokuInitializer();
		List<Map<String, String>> initNumbers = new ArrayList<>();
		List<List<String>> soluzioni = new ArrayList<>();
		for (int i = 0; i < NSUDOKU; i++) {
			initNumbers.add(new HashMap<>());
			soluzioni.add(new ArrayList<>());
		}
		initNumbers = sudInit.popolaMappe(initNumbers);
		soluzioni = sudInit.popolaArray(soluzioni);
		int i = 0;
		for (Sudoku s : sudokus) {
			s.setNumeriPartenza(initNumbers.get(i));
			s.setSoluzione(soluzioni.get(i));
			i++;
		}
	}
}
