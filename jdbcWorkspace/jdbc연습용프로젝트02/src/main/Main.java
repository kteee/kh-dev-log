package main;

import member.MemberController;
import member.MemberVo;
import movie.MovieController;
import static util.Util.*;

public class Main {

	public static MemberVo loginedMember = null;
	
	public static void main(String[] args) {

		MemberController memberController = new MemberController();
		MovieController movieController = new MovieController();
		
		while(true) {
			System.out.println("===== 영화 예매 프로그램 ====");
			System.out.println("1. MEMBER");
			System.out.println("2. MOVIE");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			if (num.equals("2") && loginedMember == null) {
				System.out.println("로그인 먼저 진행해주세요.");
				continue;
			}
			
			switch (num) {
			case "1" : memberController.menu(); break;
			case "2" : movieController.menu(); break;
			default : System.out.println("잘못 입력하였습니다.");
			}

		}
		
	}

}
