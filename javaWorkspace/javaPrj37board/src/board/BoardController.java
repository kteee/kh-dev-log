package board;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import main.Main;

public class BoardController {

	private List<BoardVo> voList;
	private int seq;
	
	public BoardController() {
		Main.sc = new Scanner(System.in);
		voList = new ArrayList<BoardVo>();
		seq = 1;
	}
	
	// 메뉴
	public void menu() {
		System.out.println("----- MENU -----");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 목록 조회");
		System.out.println("3. 게시글 상세 조회");
		System.out.println("4. 게시글 수정");
		System.out.println("5. 게시글 삭제");
		System.out.println("9. 이전 메뉴로 돌아가기");
		System.out.print("메뉴 번호 선택 : ");
		String num = Main.sc.nextLine();
		
		switch(num) {
		case "1" : insertBoard(); break;
		case "2" : selectBoardList(); break;
		case "3" : selectBoardByNo(); break;
		case "4" : editBoard(); break;
		case "5" : deleteBoardByNo(); break;
		case "9" : return;
		default : System.out.println("잘못된 번호입니다.");
		}
	}
	
	// 게시글 작성
	public void insertBoard() {
		if(Main.LoginMemberVo == null) {
			System.out.println("로그인 먼저 해주세요.");
			return;
		}
		
		System.out.println("--- 게시글 작성 ---");
		System.out.print("제목 : ");
		String title = Main.sc.nextLine();
		System.out.print("내용 : ");
		String content = Main.sc.nextLine();
		
		String no = String.valueOf(seq);
		BoardVo vo = new BoardVo(no, title, content, Main.LoginMemberVo.getNick());
		seq++;
		
		voList.add(vo);
	}
	
	// 게시글 목록 조회
	public void selectBoardList() {
		System.out.println("--- 게시글 목록 조회 ---");
		System.out.println("No / Title / Writer");
		for (BoardVo vo : voList) {
			System.out.println(vo.getNo() +" / " + vo.getTitle() + " / " + vo.getWriter());
		}
	}
	
	// 게시글 상세 조회
	public void selectBoardByNo() {
		System.out.println("--- 게시글 상세 조회 ---");
		System.out.print("조회할 게시글 번호 : ");
		String num = Main.sc.nextLine();
		for (BoardVo vo : voList) {
			if(vo.getNo().equals(num)) {
				System.out.println(vo);
				break;
			}
		}	
	}
	
	// 게시글 수정
	public void editBoard() {
		System.out.println("--- 게시글 수정 ---");
		System.out.print("수정할 게시글 번호 : ");
		String num = Main.sc.nextLine();
		System.out.print("변경할 제목 : ");
		String title = Main.sc.nextLine(); 
		System.out.print("변경할 내용 : ");
		String content = Main.sc.nextLine(); 
		
		for (BoardVo vo : voList) {
			if(vo.getNo().equals(num)) {
				vo.setTitle(title);
				vo.setContent(content);
				System.out.println("수정 되었습니다.");
				break;
			}
		}		
	}
	
	// 게시글 삭제
	public void deleteBoardByNo() {
		System.out.println("--- 게시글 삭제 ---");
		System.out.print("삭제할 게시글 번호 : ");
		String num = Main.sc.nextLine();
		for (BoardVo vo : voList) {
			if(vo.getNo().equals(num)) {
				voList.remove(vo);
				System.out.println("삭제 되었습니다.");
				break;
			}
		}		
	}
}
