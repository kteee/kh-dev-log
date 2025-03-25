package Member;

import java.util.Scanner;

public class MemberController {

	private Scanner sc;
	private String num;
	private MemberVo[] voArr;
	private int idx;
	
	
	public MemberController() {
		sc = new Scanner(System.in);
		voArr = new MemberVo[100];
		idx = 0;
	}
	
	public void menu() {
		System.out.println("1. 회원 가입");
		System.out.println("2. 회원 목록조회");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 선택 : ");
		num = sc.nextLine();
		
		switch(num) {
		case "1" : join(); break;
		case "2" : selectList(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); break;
		default : System.out.println("잘못 선택하였습니다.");
		}
	}
	
	public void join() {
		System.out.println("---- 회원가입 ----");
		System.out.print("ID : ");
		String id = sc.nextLine();
		System.out.print("PASSWORD : ");
		String pwd = sc.nextLine();
		System.out.print("NICKNAME : ");
		String nick = sc.nextLine();
		
		MemberVo vo = new MemberVo(id, pwd, nick);
		voArr[idx] = vo;
		idx++;
	}
	
	public void selectList() {
		System.out.println("--- 회원 목록조회 ---");
		for (int i=0; i<idx; i++) {
			System.out.println(voArr[i]);
		}
	}

	public String getNum() {
		return num;
	}
	
}
