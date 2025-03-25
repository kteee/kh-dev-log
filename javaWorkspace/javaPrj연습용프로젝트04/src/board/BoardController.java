package board;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BoardController {

	private Scanner sc;
	private List<BoardVo> boardArr;  // 제네릭 안쓰면 디폴트 Object로 셋팅되어 있음 
	private int seq;
	
	public BoardController() {
		sc = new Scanner(System.in);
		boardArr = new ArrayList<BoardVo>();
		seq = 1;
	}
	
	public boolean menu() {
		System.out.println("===== MENU =====");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 목록 조회");
		System.out.println("3. 게시글 상세 조회");
		System.out.println("4. 게시글 수정");
		System.out.println("5. 게시글 삭제");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : insertBoard(); break;
		case "2" : selectBoardList(); break;
		case "3" : selectBoardByNo(); break;
		case "4" : editBoardByNo(); break;
		case "5" : deletBoardByNo(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return true;
		default : System.out.println("잘못 선택하였습니다.");
		}
		return false;
	}
	
	public void insertBoard() {
		System.out.println("---- 게시글 작성 ----");
		String no = String.valueOf(seq);
		seq++;
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("내용 : ");
		String content = sc.nextLine();
		System.out.print("작성자 : ");
		String writer = sc.nextLine();
		
		BoardVo board = new BoardVo(no, title, content, writer);
		boardArr.add(board);
		
		System.out.println("게시글 작성 성공!");
	}
	
	public void selectBoardList() {
		System.out.println("---- 게시글 목록 조회 ----");
		System.out.println("NO / TITLE / CONTENT / WRITER");
		for (BoardVo board : boardArr) {
			System.out.println(board.getNo() + " / " + board.getTitle() + " / " + board.getContent() + " / " + board.getWriter());
		}
	}
	
	public void selectBoardByNo() {
		System.out.println("---- 게시글 상세 조회 ----");
		System.out.print("조회할 게시글 번호 : ");
		String num = sc.nextLine();
		for (BoardVo board : boardArr) {
			if(board.getNo().equals(num)) {
				System.out.println(board.getNo() + " / " + board.getTitle() + " / " + board.getContent() + " / " + board.getWriter());
				return;
			}
		}
		System.out.println("해당 번호의 게시글이 없습니다.");
	}
	
	public void editBoardByNo() {
		System.out.println("---- 게시글 수정 ----");
		System.out.print("수정할 게시글 번호 : ");
		String num = sc.nextLine();
		for (BoardVo board : boardArr) {
			if(board.getNo().equals(num)) {
				System.out.print("수정할 제목 : ");
				String title = sc.nextLine();
				System.out.print("수정할 내용 : ");
				String content = sc.nextLine();
				board.setTitle(title);
				board.setContent(content);
				System.out.println("게시글 수정 성공!");
				return;
			}
		}
		System.out.println("해당 번호의 게시글이 없습니다.");
	}
	
	public void deletBoardByNo() {
		System.out.println("---- 게시글 삭제 ----");
		System.out.print("삭제할 게시글 번호 : ");
		String num = sc.nextLine();
		for (Object board : boardArr) {  // boardArr에 제네릭 지정 안해주면 이렇게 해야함..
			if(((BoardVo)board).getNo().equals(num)) { 
				boardArr.remove(board);
				System.out.println("게시글 삭제 성공!");
				return;
			}
		}
		System.out.println("해당 번호의 게시글이 없습니다.");
	}
	
}
