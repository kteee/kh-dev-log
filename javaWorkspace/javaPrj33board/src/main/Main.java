package main;

import board.controller.BoardController;

public class Main {

	public static void main(String[] args) {

		System.out.println("====== BOARD ======");
		BoardController controller = new BoardController();
		while(true) {
			boolean isFinish = controller.menu();
			if (isFinish) {
				break;
			}
		}
	}

}
