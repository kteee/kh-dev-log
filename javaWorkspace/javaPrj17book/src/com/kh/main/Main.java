package com.kh.main;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		// 도서 관리 프로그램
		System.out.println("==== 도서 관리 프로그램 ====");
		
		Scanner sc = new Scanner(System.in);
		Manager m = new Manager();
		
		while (true) {
			System.out.println("");
			System.out.println("---- MENU ----");
			System.out.println("1. 도서 등록");
			System.out.println("2. 도서 목록 조회");
			System.out.println("3. 도서 상세 조회");
			System.out.println("4. 도서 삭제");
			System.out.println("9. 프로그램 종료");
			System.out.print("메뉴 번호 선택 : ");
			String num = sc.nextLine(); 
			System.out.println("");
			
			switch (num) {
			case "1" : m.enrollBook(); break;
			case "2" : m.printAllBook(); break;
			case "3" : m.printBook(); break;
			case "4" : m.deleteBook(); break;
			case "9" : System.out.println("프로그램을 종료합니다."); return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.");  
			}
		}
	}
}
