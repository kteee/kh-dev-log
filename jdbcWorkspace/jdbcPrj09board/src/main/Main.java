package main;

import java.util.Scanner;

import board.BoardController;

public class Main {

	public static void main(String[] args) throws Exception {

		BoardController bc = new BoardController();
		
		while(true) {
			bc.menu();
		}
	}

}
