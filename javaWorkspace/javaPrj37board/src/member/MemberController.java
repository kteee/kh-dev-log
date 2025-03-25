package member;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import exception.MemberIdException;
import exception.MemberPwdException;
import main.Main;

public class MemberController {

	private List<MemberVo> memberArr;
	private int memberSeq;
	
	public MemberController() {
		memberArr= new ArrayList();
		memberSeq = 1;
	}
	
	// 메뉴
	public void memberMenu() {
		System.out.println("--- Member Menu ---");
		System.out.println("1. 회원가입");
		System.out.println("2. 로그인");
		System.out.println("메뉴 번호 선택 : ");
		String num = Main.sc.nextLine();
		switch(num) {
		case "1" : join(); break; 
		case "2" : login(); break;
		default : System.out.println("잘못된 번호입니다.");
		}
	}
	
	private void checkId(String id) throws MemberIdException {
		if (id.length() < 4) {
			throw new MemberIdException("아이디 짦음");
		}
	}
	
	private void checkPwd(String pwd) throws MemberPwdException {
		if(pwd.length() < 4) {
			throw new MemberPwdException("비밀번호 짧음");
		}
	}
	
	
	// 회원가입
	public void join() {
		System.out.println("---- 회원가입 ----");
		System.out.print("아이디 : ");
		String id = Main.sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = Main.sc.nextLine();
		System.out.print("닉네임 : ");
		String nick = Main.sc.nextLine();
		String no = String.valueOf(memberSeq);
		
		// validate
		try {
			checkId(id);
			checkPwd(pwd);
		} catch(Exception e) {
			String msg = e.getMessage();
			System.out.println(msg);
			return;
		}
		
		MemberVo member = new MemberVo(no, id, pwd, nick);
		memberArr.add(member);
		memberSeq++;
		System.out.println("회원가입 성공!");
	}
	
	// 로그인
	public void login() {
		System.out.println("---- 로그인 ----");
		System.out.print("아이디 : ");
		String id = Main.sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = Main.sc.nextLine();
		
		for(MemberVo vo : memberArr) {
			if(vo.getId().equals(id) && vo.getPwd().equals(pwd)) {
				Main.LoginMemberVo = vo;
				System.out.println("로그인 성공!");
				return;
			}
		}
		System.out.println("로그인 실패...");
	}
}
