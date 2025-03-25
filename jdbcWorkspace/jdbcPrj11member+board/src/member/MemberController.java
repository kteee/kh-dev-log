package member;

// static 변수 import 하기
import static util.KhUtil.sc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.JDBCTemplate;
import main.Main;

public class MemberController {
	
	// 메뉴 
	public void menu() throws Exception {
		System.out.println("----- MENU -----");
		System.out.println("1. 회원가입");
		System.out.println("2. 로그인");
		System.out.println("3. 비밀번호 변경");
		System.out.println("4. 닉네임 변경");
		System.out.println("5. 회원탈퇴");
		System.out.println("6. 회원 목록 조회 (관리자)");
		System.out.println("7. 회원 상세 조회 (관리자)");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
	switch(num) {
		case "1" : join(); break;
		case "2" : login(); break;
		case "3" : updatePwd(); break;
		case "4" : updateNick(); break;
		case "5" : delete(); break;
		case "6" : findMemberAll(); break;
		case "7" : findMemberById(); break;
		default : System.out.println("잘못 입력하였습니다.");
		}
	
	}
	
	
	// 회원가입
	public void join() throws Exception {
		System.out.println("---- 회원가입 ----");
		
		// 1. data 받기/처리
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		System.out.print("닉네임 : ");
		String nick = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리 => 받은 데이터에 대한 검사
		// 아이디, 패스워드는 4자 이상이어야 함
		// 닉네임에 '관리자'가 들어가지 못함
		if (id.length() < 4) {
			throw new Exception("아이디를 4글자 이상 입력해주세요");
		}
		
		if (pwd.length() <4 ) {
			throw new Exception("비밀번호를 4글자 이상 입력해주세요");
		}
		
		if (nick.contains("관리자")) {
			throw new Exception("닉네임에 '관리자'를 포함하지 못함");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				INSERT INTO MEMBER (
				    NO
				    , ID
				    , PWD
				    , NICK
				) VALUES (
				    SEQ_MEMBER.NEXTVAL
				    , ? 
				    , ? 
				    , ?
				)
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, nick);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("회원가입 성공!");
		}
		else {
			System.out.println("회원가입 실패..");
		}
		
	}

	// 로그인
	public void login() throws Exception {
		System.out.println("---- 로그인 ----");
		
		// 1. data 받기/처리
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// 아이디, 패스워드는 4자 이상이어야 함
		if (id.length() < 4) {
			throw new Exception("로그인 실패 (아이디를 4글자 이상 입력해주세요)");
		}
		
		if (pwd.length() <4 ) {
			throw new Exception("로그인 실패 (비밀번호를 4글자 이상 입력해주세요)");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT *
				FROM MEMBER
				WHERE ID = ?
				AND PWD = ?
				AND DEL_YN = 'N' 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		
		// 로그인, 패스워드 일치하면 로그인
		// 로그인 된 상태는 계속 정보 유지가 되어야 함
		if (rs.next()) {
			String no = rs.getString("NO");
			// String id = rs.getString("ID");
			// String pwd = rs.getString("PWD");
			String nick = rs.getString("NICK");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			MemberVo vo = new MemberVo(no, id, pwd, nick, enrollDate, modifyDate, delYn);
			System.out.println(vo.getNick() + "님 로그인 성공!");
			Main.loginMember = vo;
		}
		else {
			System.out.println("로그인 실패..");
		}
		
	}

	// 비밀번호 수정 (기존 비밀번호 확인, 새 비밀번호 설정)
	public void updatePwd() throws Exception {
		System.out.println("---- 비밀번호 수정 ----");
		
		// 1. data 받기/처리
		System.out.print("기존 비밀번호 : ");
		String oldPwd = sc.nextLine();
		System.out.print("새 비밀번호 : ");
		String newPwd = sc.nextLine();
		String memberNo = Main.loginMember.getNo();		
		
		// 2. biz (비즈니스 로직) 처리
		// 패스워드는 4자 이상이어야 함 
		if (newPwd.length() <4 ) {
			throw new Exception("비밀번호를 4글자 이상 입력해주세요");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE MEMBER
				SET PWD = ?
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				AND PWD = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, newPwd);
		pstmt.setString(2, memberNo);
		pstmt.setString(3, oldPwd);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("비밀번호 변경 성공!");
			Main.loginMember.setPwd(newPwd);
		}
		else {
			System.out.println("비밀번호 변경 실패..");
		}
		
	}

	// 닉네임 수정
	public void updateNick() throws Exception {
		System.out.println("---- 닉네임 수정 ----");
		
		// 1. data 받기/처리
		System.out.print("변경할 닉네임 : ");
		String nick = sc.nextLine();
		String memberNo = Main.loginMember.getNo();
		
		// 2. biz (비즈니스 로직) 처리
		// 닉네임에 '관리자'가 들어가지 못함
		if (nick.contains("관리자")) {
			throw new Exception("닉네임에 '관리자'를 포함하지 못함");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE MEMBER
				SET NICK = ?
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, nick);
		pstmt.setString(2, memberNo);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("닉네임 변경 성공!");
			Main.loginMember.setNick(nick);
		}
		else {
			System.out.println("닉네임 변경 실패..");
		}
		
	}

	// 회원탈퇴 (비밀번호 확인 후 탈퇴 처리)
	public void delete() throws Exception {
		System.out.println("---- 회원 탈퇴 ----");
		
		// 1. data 받기/처리
		System.out.println("비밀번호 확인 후 탈퇴 처리가 진행됩니다.");
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// 패스워드는 4자 이상이어야 함
		if (pwd.length() <4 ) {
			throw new Exception("비밀번호를 4글자 이상 입력해주세요");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE MEMBER
				SET DEL_YN = 'Y'
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				AND PWD = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Main.loginMember.getNo());
		pstmt.setString(2, pwd);
		int result = pstmt.executeUpdate();
	
		if (result == 1) {
			System.out.println("회원 탈퇴 성공!");
			Main.loginMember = null;
		}
		else {
			System.out.println("회원 탈퇴 실패..");
		}
	}

	// 전체 회원 목록 조회 (관리자)
	public void findMemberAll() throws SQLException {
		System.out.println("---- 전체 회원 목록 조회 ----");
		
		// 1. data 받기/처리
		// X
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * 
				FROM MEMBER
				ORDER BY NO DESC
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String id = rs.getString("ID");
			String pwd = rs.getString("PWD");
			String nick = rs.getString("NICK");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");
			
			MemberVo vo = new MemberVo(no, id, pwd, nick, enrollDate, modifyDate, delYn);
			System.out.println(vo);
		}
	}

	// 회원 상세 조회 (관리자)
	public void findMemberById() throws Exception {
		System.out.println("---- 회원 상세 조회 ----");
		
		// 1. data 받기/처리
		System.out.print("조회할 회원 ID : ");
		String id = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// 아이디는 4자 이상이어야 함
		if (id.length() < 4) {
			throw new Exception("아이디를 4글자 이상 입력해주세요");
		}
		
		// 3. DB 저장/처리
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL 
		String sql = """
				SELECT * 
				FROM MEMBER
				WHERE ID = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String no = rs.getString("NO");
			// String id = rs.getString("ID");
			String pwd = rs.getString("PWD");
			String nick = rs.getString("NICK");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");
			
			MemberVo vo = new MemberVo(no, id, pwd, nick, enrollDate, modifyDate, delYn);
			System.out.println(vo);
		}
		else {
			System.out.println("아이디 조회 실패..");
		}
	}
	
}
