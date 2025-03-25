package member;

import static util.Util.*;

import java.util.List;

import main.Main;

public class MemberController {

	// 공통 메뉴 
	public void menu() {
		while (true) {
			if (Main.loginedMember != null) {
				if (Main.loginedMember.getId().contains("system")) {
					adminMenu();
					break;
				}
				else {
					memberMenu();
					break;
				}
			}
			System.out.println("----- MENU -----");
			System.out.println("1. 회원가입");
			System.out.println("2. 로그인");
			System.out.println("9. 이전 메뉴로 이동");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch (num) {
			case "1" : join(); break;
			case "2" : login(); return;
			case "9" : return;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
	}
	
	// 회원 메뉴
	public void memberMenu() {
		while (true) {
			System.out.println("---- MEMBER MENU ----");
			System.out.println("1. 비밀번호 변경");
			System.out.println("2. 닉네임 변경");
			System.out.println("3. 로그아웃");
			System.out.println("4. 회원탈퇴");
			System.out.println("9. 이전 메뉴로 이동");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch (num) {
			case "1" : updatePwd(); break;
			case "2" : updateNick(); break;
			case "3" : logout(); return;
			case "4" : deleteMember(); return;
			case "9" : return;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
		
	}
	
	// 관리자 메뉴
	public void adminMenu() {
		while (true) {
			System.out.println("---- ADMIN MENU ----");
			System.out.println("1. 회원 목록 조회");
			System.out.println("2. 회원 상세 조회");
			System.out.println("3. 회원 검색 (아이디)");
			System.out.println("4. 회원 검색 (닉네임)");
			System.out.println("5. 로그아웃");
			System.out.println("9. 이전 메뉴로 이동");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch (num) {
			case "1" : selectMemberAll(); break;
			case "2" : selectMemberByNo(); break;
			case "3" : searchMemberById(); break;
			case "4" : searchMemberByNick(); break;
			case "5" : logout(); return;
			case "9" : return;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
	}
	
	// 회원가입
	public void join() {
		try {
			System.out.println("---- 회원가입 ----");
			
			// data
			System.out.print("아이디 : ");
			String id = sc.nextLine();
			System.out.print("비밀번호 : ");
			String pwd = sc.nextLine();
			System.out.print("닉네임 : ");
			String nick = sc.nextLine();
			
			MemberVo vo = new MemberVo(null, id, pwd, nick, null, null, null);
			
			// service
			MemberService service = new MemberService();
			int result = service.join(vo);
			
			// result
			if (result == 1) {
				System.out.println("회원가입 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("회원가입 실패..");
			System.out.println(e.getMessage());
		}
		
	}
	
	// 로그인
	public void login() {
		try {
			System.out.println("---- 로그인 ----");
			
			// data
			System.out.print("아이디 : ");
			String id = sc.nextLine();
			System.out.print("비밀번호 : ");
			String pwd = sc.nextLine();
			
			// service
			MemberService service = new MemberService();
			MemberVo vo = service.login(id, pwd);
			
			// result
			if (vo != null) {
				System.out.println(vo.getNick() + "님 로그인 성공!");
				Main.loginedMember = vo;
			}
			else {
				throw new Exception("해당 멤버가 조회되지 않습니다.");
			}
		} catch (Exception e) {
			System.out.println("로그인 실패..");
			System.out.println(e.getMessage());
		}
	}
	

	// 비밀번호 변경
	public void updatePwd() {
		try {
			System.out.println("---- 비밀번호 변경 ----");	
			
			// data
			System.out.print("기존 비밀번호 : ");
			String oldPwd = sc.nextLine();
			System.out.print("새 비밀번호 : ");
			String newPwd = sc.nextLine();
			String no = Main.loginedMember.getNo();
			
			// service
			MemberService service = new MemberService();
			int result = service.updatePwd(no, oldPwd, newPwd);
			
			// result
			if (result == 1) {
				System.out.println("비밀번호 변경 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("비밀번호 변경 실패..");
			System.out.println(e.getMessage());
		}
	}
	
	
	// 닉네임 수정
	public void updateNick() {
		try {
			System.out.println("---- 닉네임 변경 ----");	
			
			// data
			System.out.print("변경할 닉네임 : ");
			String nick = sc.nextLine();
			String no = Main.loginedMember.getNo();
			
			// service
			MemberService service = new MemberService();
			int result = service.updateNick(no, nick);
		
			// result
			if (result == 1) {
				System.out.println("닉네임 변경 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("닉네임 변경 실패..");
			System.out.println(e.getMessage());
		}
		
	}
	
	// 로그아웃
	public void logout() {
		if (Main.loginedMember != null) {
			System.out.println("로그아웃 성공!");
			Main.loginedMember = null;
		}
		else {
			System.out.println("로그아웃 실패..");
		}
	}
	
	// 회원 탈퇴 
	public void deleteMember() {
		try {
			System.out.println("---- 회원탈퇴 ----");	
			System.out.println("비밀번호 확인 후 회원탈퇴가 진행됩니다.");
			
			// data
			System.out.print("비밀번호 확인 : ");
			String pwd = sc.nextLine();
			String no = Main.loginedMember.getNo();
			
			// service
			MemberService service = new MemberService();
			int result = service.deleteMember(no, pwd);
			
			// result
			if (result == 1) {
				System.out.println("회원탈퇴 성공!");
				Main.loginedMember = null;
			}
			else {
				throw new Exception("해당 멤버가 조회되지 않습니다.");
			}
		} catch (Exception e) {
			System.out.println("회원탈퇴 실패..");
			System.out.println(e.getMessage());
		}
		
	}
	
	// 회원 목록 조회 (관)
	public void selectMemberAll() {
		try {
			System.out.println("---- 회원 목록 조회 ----");
			
			// data
			// X
			
			// service
			MemberService service = new MemberService();
			List<MemberVo> voList = service.selectMemberAll();
			
			// result
			for (MemberVo vo : voList) {
				System.out.println(vo);
			}
			
		} catch (Exception e) {
			System.out.println("회원 목록 조회 실패.."); 
			System.out.println(e.getMessage());
		}
	}
	
	// 회원 상세 조회 (관)
	public void selectMemberByNo() {
		try {
			System.out.println("---- 회원 상세 조회 ----");
			
			// data
			System.out.print("조회할 회원 번호 : ");
			String no = sc.nextLine();
			
			// service
			MemberService service = new MemberService();
			MemberVo vo = service.selectMemberByNo(no);
			
			// result
			System.out.println("회원 번호 : " + vo.getNo());
			System.out.println("회원 아이디 : " + vo.getId());
			System.out.println("회원 닉네임 : " + vo.getNick());
			System.out.println("회원 가입일자 : " + vo.getEnrollDate());
			System.out.println("회원 탈퇴 여부 : " + vo.getDelYn());
			
		} catch (Exception e) {
			System.out.println("회원 상세 조회 실패.."); 
			System.out.println(e.getMessage());
		}
	}
	
	// 회원 검색 (아이디)
	public void searchMemberById() {
		try {
			System.out.println("---- 회원 검색 (아이디) ----");
			
			// data
			System.out.print("검색할 회원 아이디 : ");
			String id = sc.nextLine();
			
			// service
			MemberService service = new MemberService();
			List<MemberVo> voList = service.searchMemberById(id);
			
			// result
			for (MemberVo vo : voList) {
				System.out.println(vo);
			}
			
		} catch (Exception e) {
			System.out.println("회원 검색 실패.."); 
			System.out.println(e.getMessage());
		}
	}
	
	// 회원 검색 (닉네임)
	public void searchMemberByNick() {
		try {
			System.out.println("---- 회원 검색 (닉네임) ----");
			
			// data
			System.out.print("검색할 회원 닉네임 : ");
			String nick = sc.nextLine();
			
			// service
			MemberService service = new MemberService();
			List<MemberVo> voList = service.searchMemberByNick(nick);
			
			// result
			for (MemberVo vo : voList) {
				System.out.println(vo);
			}
			
		} catch (Exception e) {
			System.out.println("회원 검색 실패.."); 
			System.out.println(e.getMessage());
		}
	}
}
