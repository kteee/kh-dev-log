package myPrj04;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		GameManager manager = new GameManager();
		
		while (true) {
			System.out.println("====== CAFE GAME ======");
			System.out.println("1. 새 게임 시작");
			System.out.println("2. 전체 랭킹 확인");
			System.out.println("9. 프로그램 종료");
			System.out.println("-----------------------");
			System.out.print("메뉴 번호 선택 : ");
			
			String num = sc.nextLine();
			switch(num) {
			case "1" : manager.newGame(); break;
			case "2" : manager.printRanking(); break;
			case "9" : System.out.println("프로그램을 종료합니다."); return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요."); 
			}
		}
	}
}
