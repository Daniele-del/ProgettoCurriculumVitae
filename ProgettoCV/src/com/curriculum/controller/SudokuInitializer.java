package com.curriculum.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class SudokuInitializer {

	public List<List<String>> popolaArray(List<List<String>> soluzioni) {
		int i = 0;
		List<String> tmp = new ArrayList<>();
		
	//	String [] a1 = {"4","9","7","2","1","6","5","8","3","1","2","6","3","8","5","4","9","7","3","5","8","4","7","9","2","6","1","9","7","4","6","2","1","8","3","5","6","1","2","8","5","3","7","4","9","5","8","3","9","4","7","6","1","2","7","4","9","1","6","2","3","5","8","2","6","1","5","3","8","9","7","4","8","3","5","7","9","4","1","2","6"};
	//	List<String> tmp = Arrays.asList(a1);
	//	soluzioni.get(i).addAll(tmp);
		
		Collections.addAll(tmp, "4","9","7","2","1","6","5","8","3","1","2","6","3","8","5","4","9","7","3","5","8","4","7","9","2","6","1","9","7","4","6","2","1","8","3","5","6","1","2","8","5","3","7","4","9","5","8","3","9","4","7","6","1","2","7","4","9","1","6","2","3","5","8","2","6","1","5","3","8","9","7","4","8","3","5","7","9","4","1","2","6");
		soluzioni.get(i).addAll(tmp);
		i++;
		tmp.clear();
		
		Collections.addAll(tmp, "");
		soluzioni.get(i).addAll(tmp);
		i++;
		tmp.clear();
		
		Collections.addAll(tmp, "");
		soluzioni.get(i).addAll(tmp);
		i++;
		tmp.clear();
		
		Collections.addAll(tmp, "");
		soluzioni.get(i).addAll(tmp);
		i++;
		tmp.clear();
		
		Collections.addAll(tmp, "");
		soluzioni.get(i).addAll(tmp);
		i++;
		tmp.clear();
		
	

		return soluzioni;
	}

	public List<Map<String, String>> popolaMappe(List<Map<String, String>> initNumbers) {
		int i = 0;

		initNumbers.get(i).put("sudoku0", "4");
		initNumbers.get(i).put("sudoku1", "9");
		initNumbers.get(i).put("sudoku3", "2");
		initNumbers.get(i).put("sudoku5", "6");
		initNumbers.get(i).put("sudoku6", "5");
		initNumbers.get(i).put("sudoku9", "1");
		initNumbers.get(i).put("sudoku13", "8");
		initNumbers.get(i).put("sudoku17", "7");
		initNumbers.get(i).put("sudoku19", "5");
		initNumbers.get(i).put("sudoku20", "8");
		initNumbers.get(i).put("sudoku22", "7");
		initNumbers.get(i).put("sudoku23", "9");
		initNumbers.get(i).put("sudoku25", "6");
		initNumbers.get(i).put("sudoku28", "7");
		initNumbers.get(i).put("sudoku30", "6");
		initNumbers.get(i).put("sudoku31", "2");
		initNumbers.get(i).put("sudoku32", "1");
		initNumbers.get(i).put("sudoku41", "3");
		initNumbers.get(i).put("sudoku43", "4");
		initNumbers.get(i).put("sudoku44", "9");
		initNumbers.get(i).put("sudoku45", "5");
		initNumbers.get(i).put("sudoku51", "6");
		initNumbers.get(i).put("sudoku52", "1");
		initNumbers.get(i).put("sudoku56", "9");
		initNumbers.get(i).put("sudoku57", "1");
		initNumbers.get(i).put("sudoku62", "8");
		initNumbers.get(i).put("sudoku63", "2");
		initNumbers.get(i).put("sudoku65", "1");
		initNumbers.get(i).put("sudoku69", "9");
		initNumbers.get(i).put("sudoku72", "8");
		initNumbers.get(i).put("sudoku74", "5");
		initNumbers.get(i).put("sudoku75", "7");

		i++;

		initNumbers.get(i).put("sudoku0", "6");
		initNumbers.get(i).put("sudoku5", "7");
		initNumbers.get(i).put("sudoku6", "4");
		initNumbers.get(i).put("sudoku11", "5");
		initNumbers.get(i).put("sudoku12", "9");
		initNumbers.get(i).put("sudoku13", "3");
		initNumbers.get(i).put("sudoku16", "8");
		initNumbers.get(i).put("sudoku18", "9");
		initNumbers.get(i).put("sudoku23", "8");
		initNumbers.get(i).put("sudoku24", "5");
		initNumbers.get(i).put("sudoku28", "6");
		initNumbers.get(i).put("sudoku29", "2");
		initNumbers.get(i).put("sudoku33", "3");
		initNumbers.get(i).put("sudoku34", "4");
		initNumbers.get(i).put("sudoku35", "9");
		initNumbers.get(i).put("sudoku36", "1");
		initNumbers.get(i).put("sudoku41", "9");
		initNumbers.get(i).put("sudoku44", "2");
		initNumbers.get(i).put("sudoku45", "3");
		initNumbers.get(i).put("sudoku47", "9");
		initNumbers.get(i).put("sudoku49", "8");
		initNumbers.get(i).put("sudoku50", "6");
		initNumbers.get(i).put("sudoku55", "7");
		initNumbers.get(i).put("sudoku57", "4");
		initNumbers.get(i).put("sudoku58", "9");
		initNumbers.get(i).put("sudoku63", "2");
		initNumbers.get(i).put("sudoku64", "8");
		initNumbers.get(i).put("sudoku66", "5");
		initNumbers.get(i).put("sudoku74", "3");
		initNumbers.get(i).put("sudoku78", "1");
		initNumbers.get(i).put("sudoku79", "5");
		initNumbers.get(i).put("sudoku80", "7");

		i++;

		initNumbers.get(i).put("sudoku0", "5");
		initNumbers.get(i).put("sudoku1", "9");
		initNumbers.get(i).put("sudoku7", "2");
		initNumbers.get(i).put("sudoku9", "2");
		initNumbers.get(i).put("sudoku12", "6");
		initNumbers.get(i).put("sudoku13", "9");
		initNumbers.get(i).put("sudoku15", "4");
		initNumbers.get(i).put("sudoku20", "3");
		initNumbers.get(i).put("sudoku21", "1");
		initNumbers.get(i).put("sudoku22", "2");
		initNumbers.get(i).put("sudoku25", "9");
		initNumbers.get(i).put("sudoku27", "6");
		initNumbers.get(i).put("sudoku29", "9");
		initNumbers.get(i).put("sudoku30", "4");
		initNumbers.get(i).put("sudoku31", "3");
		initNumbers.get(i).put("sudoku35", "2");
		initNumbers.get(i).put("sudoku37", "7");
		initNumbers.get(i).put("sudoku41", "9");
		initNumbers.get(i).put("sudoku43", "3");
		initNumbers.get(i).put("sudoku45", "8");
		initNumbers.get(i).put("sudoku46", "3");
		initNumbers.get(i).put("sudoku51", "9");
		initNumbers.get(i).put("sudoku53", "5");
		initNumbers.get(i).put("sudoku59", "1");
		initNumbers.get(i).put("sudoku60", "6");
		initNumbers.get(i).put("sudoku61", "5");
		initNumbers.get(i).put("sudoku64", "2");
		initNumbers.get(i).put("sudoku68", "6");
		initNumbers.get(i).put("sudoku71", "8");
		initNumbers.get(i).put("sudoku74", "5");
		initNumbers.get(i).put("sudoku77", "4");
		initNumbers.get(i).put("sudoku80", "7");

		i++;

		initNumbers.get(i).put("sudoku1", "1");
		initNumbers.get(i).put("sudoku3", "9");
		initNumbers.get(i).put("sudoku5", "5");
		initNumbers.get(i).put("sudoku11", "4");
		initNumbers.get(i).put("sudoku13", "6");
		initNumbers.get(i).put("sudoku15", "9");
		initNumbers.get(i).put("sudoku17", "3");
		initNumbers.get(i).put("sudoku18", "3");
		initNumbers.get(i).put("sudoku22", "4");
		initNumbers.get(i).put("sudoku23", "8");
		initNumbers.get(i).put("sudoku24", "1");
		initNumbers.get(i).put("sudoku30", "8");
		initNumbers.get(i).put("sudoku34", "2");
		initNumbers.get(i).put("sudoku35", "1");
		initNumbers.get(i).put("sudoku38", "1");
		initNumbers.get(i).put("sudoku41", "3");
		initNumbers.get(i).put("sudoku43", "4");
		initNumbers.get(i).put("sudoku45", "4");
		initNumbers.get(i).put("sudoku47", "7");
		initNumbers.get(i).put("sudoku48", "1");
		initNumbers.get(i).put("sudoku54", "1");
		initNumbers.get(i).put("sudoku55", "2");
		initNumbers.get(i).put("sudoku56", "6");
		initNumbers.get(i).put("sudoku60", "4");
		initNumbers.get(i).put("sudoku61", "7");
		initNumbers.get(i).put("sudoku63", "5");
		initNumbers.get(i).put("sudoku64", "9");
		initNumbers.get(i).put("sudoku66", "4");
		initNumbers.get(i).put("sudoku72", "7");
		initNumbers.get(i).put("sudoku73", "4");
		initNumbers.get(i).put("sudoku76", "1");
		initNumbers.get(i).put("sudoku80", "5");

		i++;

		initNumbers.get(i).put("sudoku2", "8");
		initNumbers.get(i).put("sudoku4", "6");
		initNumbers.get(i).put("sudoku6", "4");
		initNumbers.get(i).put("sudoku7", "1");
		initNumbers.get(i).put("sudoku9", "1");
		initNumbers.get(i).put("sudoku10", "3");
		initNumbers.get(i).put("sudoku11", "4");
		initNumbers.get(i).put("sudoku17", "6");
		initNumbers.get(i).put("sudoku24", "7");
		initNumbers.get(i).put("sudoku25", "8");
		initNumbers.get(i).put("sudoku26", "2");
		initNumbers.get(i).put("sudoku28", "5");
		initNumbers.get(i).put("sudoku30", "1");
		initNumbers.get(i).put("sudoku31", "3");
		initNumbers.get(i).put("sudoku35", "7");
		initNumbers.get(i).put("sudoku39", "8");
		initNumbers.get(i).put("sudoku41", "7");
		initNumbers.get(i).put("sudoku42", "5");
		initNumbers.get(i).put("sudoku48", "6");
		initNumbers.get(i).put("sudoku49", "9");
		initNumbers.get(i).put("sudoku53", "4");
		initNumbers.get(i).put("sudoku54", "8");
		initNumbers.get(i).put("sudoku55", "2");
		initNumbers.get(i).put("sudoku56", "7");
		initNumbers.get(i).put("sudoku61", "4");
		initNumbers.get(i).put("sudoku63", "4");
		initNumbers.get(i).put("sudoku68", "8");
		initNumbers.get(i).put("sudoku69", "6");
		initNumbers.get(i).put("sudoku70", "9");
		initNumbers.get(i).put("sudoku74", "9");
		initNumbers.get(i).put("sudoku75", "3");
		initNumbers.get(i).put("sudoku77", "1");

		return initNumbers;

	}


}
