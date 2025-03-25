package main;

import java.util.Scanner;

import board.BoardController;
import member.MemberController;
import member.MemberVo;

public class Main {
	
	public static Scanner sc;
	public static MemberVo LoginMemberVo;
	
	public static void main(String[] args) {
		
		BoardController bc = new BoardController();
		MemberController mc = new MemberController();
		
		while(true) {
			System.out.println("===== Board =====");
			System.out.println("1. Board");
			System.out.println("2. Member");
			System.out.println("9. 프로그램 종료");
			System.out.print("메뉴 번호 선택 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : bc.menu(); break;
			case "2" : mc.memberMenu(); break;
			case "9" : System.out.println("프로그램을 종료합니다."); return;
			default : System.out.println("잘못된 번호입니다.");
			}
			
		}
	}

}
