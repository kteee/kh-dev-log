package main;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws Exception {

		System.out.println("===== DDL =====");
		
		System.out.println("1. BOARD 테이블 생성");
		System.out.println("2. BOARD 테이블 삭제");
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("번호 선택 : ");
		String num = sc.nextLine();
		
		BoardController bc = new BoardController();
		
		switch(num) {
		case "1" : bc.createBoard(); break; 
		case "2" : bc.dropBoard(); break;
		default : System.out.println("잘못 선택하였습니다.");
		}
	}
}
