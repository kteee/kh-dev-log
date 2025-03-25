package member.controller;

import java.util.Scanner;

import member.vo.MemberVo;

public class MemberController {
	
	private Scanner sc;
	private MemberVo voArr[];
	private int idx;
	
	public MemberController() {
		sc = new Scanner(System.in);
		voArr = new MemberVo[100];
		idx = 0;
	}
	
	// 메뉴
	public boolean menu() {
		System.out.println("1. 회원 가입");
		System.out.println("2. 회원 목록조회");
		System.out.println("3. 회원 상세조회");
		System.out.println("4. 회원 삭제");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : join(); break;
		case "2" : selectList(); break;
		case "3" : selectDetail(); break;
		case "4" : delete(); break;
		case "9" : System.out.println("프로그램을 종료합니다"); return true; // t: 종료, f: 계속 진행
		default : System.out.println("잘못된 번호입니다.");
		}
		return false;
	}
	
	// 회원 가입 
	public void join() {
		System.out.println("---- 회원가입 ----");
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("패스워드 : ");
		String pwd = sc.nextLine();
		System.out.print("닉네임 : ");
		String nick = sc.nextLine();
		
		MemberVo vo = new MemberVo(id, pwd, nick);
		voArr[idx] = vo;
		idx++;
	}
	
	// 회원 목록조회
	public void selectList() {
		System.out.println("---- Member List ----");
		for (int i=0; i<idx; i++) {
			System.out.println(voArr[i]);
		}
	}
	
	// 회원 상세조회
	public void selectDetail() {
		
	}
	
	// 회원 삭제
	public void delete() {
		
	}
	
}
