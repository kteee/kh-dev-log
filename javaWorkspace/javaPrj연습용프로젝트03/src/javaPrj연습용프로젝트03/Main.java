package javaPrj연습용프로젝트03;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		// 음료 만들기 게임 Upgrade
		
		Scanner sc = new Scanner(System.in);
		GameManager manager = new GameManager();
		
		while (true) {
			System.out.println("===== CAFE GAME =====");
			manager.menu();
		}
	}
}
