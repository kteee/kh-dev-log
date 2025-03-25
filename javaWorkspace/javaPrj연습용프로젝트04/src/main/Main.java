package main;

import board.BoardController;

public class Main {

	public static void main(String[] args) {

		BoardController bc = new BoardController();

		boolean isEnd = false;
		while(true) {
			bc.menu();
			isEnd = bc.menu();
			if (isEnd == true)
				return;
		}
	}
}
