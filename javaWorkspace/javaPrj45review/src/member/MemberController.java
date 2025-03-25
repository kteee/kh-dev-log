package member;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import main.Main;

public class MemberController {

	private Scanner sc;
	private List<MemberVo> memberArr;
	private int seq;

	public MemberController () {
		sc = new Scanner(System.in);
		memberArr = new ArrayList<MemberVo>();
		seq = 1;
	}
	
	// 메뉴
	public void menu() {
		System.out.println("===== MENU =====");
		System.out.println("1. 회원가입");
		System.out.println("2. 로그인");
		System.out.print("메뉴 번호 선택 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : join(); break;
		case "2" : login(); break;
		}
	}
	
	// 회원가입
	public void join() {
		System.out.println("===== 회원가입 =====");
		String no = String.valueOf(seq);
		seq++;
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		System.out.print("닉네임 : ");
		String nick = sc.nextLine();
		
		MemberVo member = new MemberVo(no, id, pwd, nick);
		memberArr.add(member);
		System.out.println("회원가입 성공!");
		seq++;
	}
	
	// 로그인
	public void login() {
		System.out.println("===== 로그인 =====");
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
	
		for(MemberVo member : memberArr) {
			if(member.getId().equals(id) && member.getPwd().equals(pwd)) {
				Main.loginedMember = member;
				System.out.println("로그인 성공!");
				return;
			}
		}
		System.out.println("로그인 실패...");
	}
	
}
