package main;

import board.BoardController;
import member.MemberController;
import member.MemberVo;

//static 변수 import 하기
import static util.KhUtil.sc;

public class Main {

	public static MemberVo loginMember;
	
	public static void main(String[] args) throws Exception {
		
		System.out.println("==== MEMBER + BOARD ====");
		
		MemberController mc = new MemberController();
		BoardController bc = new BoardController();
		
		while (true) {
			System.out.println("1. MEMBER");
			System.out.println("2. BOARD");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : mc.menu(); break;
			case "2" : bc.menu(); break;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
	}
}
