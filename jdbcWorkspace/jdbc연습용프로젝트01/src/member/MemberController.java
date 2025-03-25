package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import db.JDBCTemplate;

public class MemberController {

	private Scanner sc;
	
	public MemberController() {
		sc = new Scanner(System.in);
	}
	
	// 메뉴
	public boolean menu() throws Exception {
		System.out.println("===== MEMBER =====");
		System.out.println("1. 회원 등록");
		System.out.println("2. 회원 수정");
		System.out.println("3. 회원 삭제");
		System.out.println("4. 전체 회원 조회");
		System.out.println("5. 회원 검색");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : enrollMember(); break;
		case "2" : editMember(); break;
		case "3" : deleteMember(); break;
		case "4" : viewAllMember(); break;
		case "5" : searchMember(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return true;
		default : System.out.println("잘못 입력하였습니다.");
		}
		return false;
	}
	
	public void enrollMember() throws Exception {
		System.out.println("---- 회원 등록 ----");
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("생년월일(YYYYMMDD) : ");
		String birthDate = sc.nextLine();
		System.out.print("전화번호 : ");
		String phone = sc.nextLine();
		System.out.print("주소 : ");
		String address = sc.nextLine();
		
		MemberVo vo = new MemberVo(null, name, birthDate, phone, address, null);
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				INSERT INTO MEMBER (NO, NAME, BIRTH_DATE, PHONE, ADDRESS) VALUES ( MEMBER_SEQ.NEXTVAL, ?, ?, ?, ? )
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getBirthDate());
		pstmt.setString(3, vo.getPhone());
		pstmt.setString(4, vo.getAddress());
		
		int result = pstmt.executeUpdate();
		if (result == 1) {
			System.out.println("회원 등록 성공!");
		}
		else {
			System.out.println("회원 등록 실패..");
		}
		
	}
	
	public void editMember() throws Exception {
		System.out.println("---- 회원 수정 ----");
		System.out.print("수정할 회원 번호 : ");
		String no = sc.nextLine();
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("전화번호 : ");
		String phone = sc.nextLine();
		System.out.print("주소 : ");
		String address = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE MEMBER
				SET 
				    NAME = ?
				    , PHONE = ?
				    , ADDRESS = ?
				WHERE NO = ? 
				""";
		
		MemberVo vo = new MemberVo(null, name, null, phone, address, null);
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getPhone());
		pstmt.setString(3, vo.getAddress());
		pstmt.setString(4, no);
		
		int result = pstmt.executeUpdate();
		if (result == 1) {
			System.out.println("회원 수정 성공!");
		}
		else {
			System.out.println("회원 수정 실패..");
		}
		
	}
	
	public void deleteMember() throws Exception {
		System.out.println("---- 회원 삭제 ----");
		System.out.print("삭제할 회원 번호 : ");
		String no = sc.nextLine();

		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				DELETE MEMBER
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		
		int result = pstmt.executeUpdate();
		if (result == 1) {
			System.out.println("회원 삭제 성공!");
		}
		else {
			System.out.println("회원 삭제 실패..");
		}
		
	}
	
	public void viewAllMember() throws Exception {
		System.out.println("---- 전체 회원 조회 ----");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT LPAD(NO, 4, 0) AS NO
				    , NAME
				    , BIRTH_DATE
				    , NVL(PHONE, '미등록') AS PHONE
				    , NVL(ADDRESS, '미등록') AS ADDRESS
				    , TO_CHAR(ENROLL_DATE, 'YY/MM/DD HH24:MI:SS') AS ENROLL_DATE
				FROM MEMBER
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String name = rs.getString("NAME");
			String birthDate = rs.getString("BIRTH_DATE");
			String phone = rs.getString("PHONE");
			String address = rs.getString("ADDRESS");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			MemberVo vo = new MemberVo(no, name, birthDate, phone, address, enrollDate);
			
			System.out.println(vo);
		}
		
	}
	
	public void searchMember() throws Exception {
		System.out.println("---- 회원 검색 ----");
		System.out.println("1. 회원 번호로 검색");
		System.out.println("2. 회원 이름으로 검색");
		System.out.println("3. 회원 전화번호로 검색");
		System.out.println("9. 이전 메뉴로 돌아가기");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : searchMemberByNo(); break;
		case "2" : searchMemberByName(); break;
		case "3" : searchMemberByPhone(); break;
		case "9" : return;
		default : System.out.println("잘못 입력하였습니다.");
		}
	}
	
	public void searchMemberByNo() throws Exception {
		System.out.print("회원 번호 입력 : ");
		String memberNo = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT LPAD(NO, 4, 0) AS NO
				    , NAME
				    , BIRTH_DATE
				    , NVL(PHONE, '미등록') AS PHONE
				    , NVL(ADDRESS, '미등록') AS ADDRESS
				    , TO_CHAR(ENROLL_DATE, 'YY/MM/DD HH24:MI:SS') AS ENROLL_DATE
				FROM MEMBER
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberNo);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String no = rs.getString("NO");
			String name = rs.getString("NAME");
			String birthDate = rs.getString("BIRTH_DATE");
			String phone = rs.getString("PHONE");
			String address = rs.getString("ADDRESS");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			MemberVo vo = new MemberVo(no, name, birthDate, phone, address, enrollDate);
			
			System.out.println(vo);
		}
		
	}
	
	public void searchMemberByName() throws Exception {
		System.out.print("회원 이름 입력 : ");
		String memberName = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT LPAD(NO, 4, 0) AS NO
				    , NAME
				    , BIRTH_DATE
				    , NVL(PHONE, '미등록') AS PHONE
				    , NVL(ADDRESS, '미등록') AS ADDRESS
				    , TO_CHAR(ENROLL_DATE, 'YY/MM/DD HH24:MI:SS') AS ENROLL_DATE
				FROM MEMBER
				WHERE NAME LIKE ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%"+memberName+"%");
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String name = rs.getString("NAME");
			String birthDate = rs.getString("BIRTH_DATE");
			String phone = rs.getString("PHONE");
			String address = rs.getString("ADDRESS");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			MemberVo vo = new MemberVo(no, name, birthDate, phone, address, enrollDate);
			
			System.out.println(vo);
		}
		
	}
	
	public void searchMemberByPhone() throws Exception {
		System.out.print("회원 전화번호 입력 : ");
		String memberPhone = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT LPAD(NO, 4, 0) AS NO
				    , NAME
				    , BIRTH_DATE
				    , NVL(PHONE, '미등록') AS PHONE
				    , NVL(ADDRESS, '미등록') AS ADDRESS
				    , TO_CHAR(ENROLL_DATE, 'YY/MM/DD HH24:MI:SS') AS ENROLL_DATE
				FROM MEMBER
				WHERE PHONE LIKE ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%"+memberPhone+"%");
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String name = rs.getString("NAME");
			String birthDate = rs.getString("BIRTH_DATE");
			String phone = rs.getString("PHONE");
			String address = rs.getString("ADDRESS");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			MemberVo vo = new MemberVo(no, name, birthDate, phone, address, enrollDate);
			
			System.out.println(vo);
		}
	}
}
