package board;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.swing.plaf.synth.SynthOptionPaneUI;

public class BoardController {

	private Scanner sc;
	private int seq;
	private List voList;
	
	public BoardController() {
		sc = new Scanner(System.in);
		seq = 1;
		voList = new ArrayList();
	}
	
	// 메뉴 
	public void menu() {
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 목록 조회");
		System.out.println("3. 게시글 상세 조회");
		System.out.println("4. 게시글 삭제");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 선택 : ");
		String num = sc.nextLine();
		
	
		switch(num) {
		case "1" : insertBoard(); break;
		case "2" : selectBoardList(); break;
		case "3" : selectBoardOneByNo(); break;
		case "4" : deleteBoardByNo(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return;
		default : System.out.println("잘못 선택하였습니다.");
		}
		
	}
	
	// 게시글 작성
	public void insertBoard() {
		System.out.println("---- 게시글 작성 ----");
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("내용 : ");
		String content = sc.nextLine();
		System.out.print("작성자 : ");
		String writer = sc.nextLine();
		
		BoardVo vo = new BoardVo(String.valueOf(seq), title, content, writer);
		voList.add(vo);
		seq++;
	}
	
	// 게시글 목록 조회
	public void selectBoardList() {
		System.out.println("---- 게시글 목록 ----");
		for(int i=0; i<voList.size(); i++) {
			System.out.println(voList.get(i));
		}
	}
	
	// 게시글 상세 조회 (번호)
	public void selectBoardOneByNo() {
		System.out.println("---- 게시글 상세 ----");
		
	}
	
	// 게시글 삭제 (번호)
	public void deleteBoardByNo() {
		System.out.println("---- 게시글 삭제 ----");
		System.out.println();
	}
}
