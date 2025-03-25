package main;

import java.util.List;
import java.util.Scanner;

import manager.ShopController;
import manager.ItemVo;
import member.MemberController;
import member.MemberVo;

public class Main {

	public static MemberVo LoginMemberVo;
	public static List<ItemVo> voList;
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in) ;
		MemberController mc = new MemberController();
		ShopController ic = new ShopController();
		
		while(true) 
		{
			System.out.println("===== MENU =====");
			System.out.println("1. 회원 메뉴");
			System.out.println("2. 관리자 메뉴");
			System.out.println("9. 프로그램 종료");
			System.out.print("메뉴 번호 선택 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : mc.menu(); break;
			case "2" : ic.menu(); break;
			case "9" : System.out.println("프로그램을 종료합니다."); return;
			default : System.out.println("잘못된 번호입니다.");
			}
		}
	}
}
