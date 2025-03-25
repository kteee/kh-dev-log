package board;

import static util.Khutil.sc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import db.JDBCTemplate;

public class BoardController {
	
	// 던진 예외들은 컨트롤러에서 처리함

	// menu 
	public void menu() {
		System.out.println("---- MENU ----");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 수정");
		System.out.println("3. 게시글 삭제");
		System.out.println("4. 게시글 상세 조회");
		System.out.println("5. 게시글 목록 조회");
		System.out.print("메뉴 번호 선택 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : insertBoard(); break;
		case "2" : updateBoard() ; break;
		case "3" : deleteBoard(); break; 
		case "4" : selectBoardByNo(); break;
		case "5" : selectBoardAll(); break;
		default : System.out.println("잘못 선택하였습니다.");
		}
	}
	
	// 게시글 작성
	public void insertBoard() {
		try {
			System.out.println("---- 게시글 작성 ----");
			
			// data 받기
			System.out.print("제목 : ");
			String title = sc.nextLine();
			System.out.print("내용 : ");
			String content = sc.nextLine();
			
			// 받은 데이터를 오브젝트로 저장
			BoardVo vo = new BoardVo(null, title, content, null);
			
			// service 호출
			BoardService bs = new BoardService();
			int result = bs.insertBoard(vo); // 일일이 매개변수 쳐서 전달하기 번거로우니 객체로 만들어 객체를 통째로 전달
			
			// 결과처리
			if (result == 1) {
				System.out.println("게시글 작성 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
			
		} catch(Exception e) {
			System.out.println("게시글 작성 실패.. ");
			e.printStackTrace();
		}
	}
	
	// 게시글 수정 (제목, 내용)
	public void updateBoard() {
		try {
			System.out.println("---- 게시글 수정 ----");
			
			// data 
			System.out.print("수정할 게시글 번호 : ");
			String num = sc.nextLine();
			System.out.print("수정할 제목 : ");
			String title = sc.nextLine();
			System.out.print("수정할 내용 : ");
			String content = sc.nextLine();
			
			BoardVo vo = new BoardVo(num, title, content, null);
			
			// service 호출
			BoardService bs = new BoardService();
			int result = bs.updateBoard(vo);
			
			// 결과처리
			if (result == 1) {
				System.out.println("게시글 수정 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("게시글 수정 실패..");
			e.printStackTrace();
		}
	}
	
	// 삭제하기 (번호)
	public void deleteBoard() {
		try {
			System.out.println("---- 게시글 삭제 ----");
			
			System.out.print("삭제할 게시글 번호 : ");
			String num = sc.nextLine();
			
			
			BoardService service = new BoardService();
			int result = service.deleteBoard(num);
			
			if (result == 1) {
				System.out.println("게시글 삭제 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("게시글 삭제 실패..");
			e.printStackTrace();
		}
		
	}
	
	// 게시글 상세 조회
	public void selectBoardByNo() {
		try {
			System.out.println("---- 게시글 상세 조회 ----");
			System.out.print("조회할 게시글 번호 : ");
			String num = sc.nextLine();
			
			BoardService service = new BoardService();
			BoardVo vo = service.selectBoardByNo(num);
			// ResultSet rs = service.selectBoardByNo(num); 
			
			System.out.println("번호 : " + vo.getNo());
			System.out.println("제목 : " + vo.getTitle());
			System.out.println("작성일시 : " + vo.getEnrollDate());
			System.out.println("내용 : " + vo.getContent());

		} catch (Exception e) {
			System.out.println("게시글 조회 실패..");
			e.printStackTrace();
		}
	
	}
	
	// 게시글 목록 조회
	public void selectBoardAll() {
		try {
			System.out.println("---- 게시글 목록 조회 ----");
			System.out.println("번호 / 제목");
			
			// service 호출
			BoardService service = new BoardService();
			List<BoardVo> voList = service.selectBoardAll();
			
			// 결과처리
			for (BoardVo vo : voList) {
				System.out.println(vo.getNo() + " / " + vo.getTitle());
			}
			
		} catch (Exception e) {
			System.out.println("게시글 목록 조회 실패..");
			e.printStackTrace();
		}
	}
	
}
