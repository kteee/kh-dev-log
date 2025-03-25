package com.kh.main;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		// 상품 재고 관리 프로그램
		System.out.println("====== product ======"); 
		Scanner sc = new Scanner(System.in);
		Manager manager = new Manager();
		
		while (true) {
			System.out.println("");
			manager.printMenu();
			
			System.out.print("메뉴 번호 선택 : ");
			int userSelect = sc.nextInt();
			System.out.println("");
			
			switch (userSelect) {
			case 1 : 
				manager.enroll(); 
				break;
			case 2 : 
				manager.printAllProduct();
				break;
			case 3 : 
				manager.plus();
				break;
			case 4 : 
				manager.minus();
				break;
			case 9 : 
				System.out.println("프로그램이 종료되었습니다.");
				//isEnd = true;
				//break;
				return; // 간단하게 return 써서 종료할 수도 있음
			default : 
				System.out.println("잘못 선택하였습니다. 다시 선택해 주세요.");
			}
		}
	}
}
