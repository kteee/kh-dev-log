package board.controller;

import java.util.Scanner;

import board.vo.BoardVo;

public class BoardController {

	private Scanner sc;  // 초기화는 생성자에서 진행
	private int idx;
	private BoardVo[] voArr;
	
	public BoardController() {
		sc = new Scanner(System.in);
		idx = 0;
		voArr = new BoardVo[100];
	}
	
	// 메뉴
	public boolean menu() {
		System.out.println("----- MENU -----");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 목록 조회");
		System.out.println("3. 게시글 상세 조회");
		System.out.println("4. 게시글 삭제");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : insertBoard(); break;
		case "2" : selectBoardList(); break;
		case "3" : selectBoardOne(); break;
		case "4" : deleteBoard(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return true;
		default : System.out.println("잘못된 번호입니다.");
		}
		return false;
	}

	// 게시글 작성
	public void insertBoard() {
		System.out.println("----- 게시글 작성 -----");
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("내용 : ");
		String content = sc.nextLine();
		System.out.print("작성자 : ");
		String writer = sc.nextLine();
		String no = String.valueOf(idx+1);
		
		BoardVo vo = new BoardVo(no, title, content, writer);
		voArr[idx] = vo;
		idx++;
	}

	// 게시글 목록 조회
	public void selectBoardList() {
		System.out.println("----- 게시글 목록 -----");
		for (int i=0; i<idx; i++) {
			if(voArr[i] == null) { 
				continue; 
			}
			System.out.println(voArr[i]);
		}
	}
	
	// 게시글 상세 조회 (게시글 번호)
	public void selectBoardOne() {
		System.out.println("----- 게시글 상세 -----");
		System.out.print("조회할 게시글 번호 : ");
		String num = sc.nextLine();
		
		for(int i=0; i<idx; i++) {
			if(voArr[i].getNo().equals(num)) {
				System.out.println(voArr[i]);
				continue;
			}
			else {
				System.out.println("잘못된 번호입니다.");
				break;
			}
		}
	}

	// 게시글 삭제 (게시글 번호)
	public void deleteBoard() {
		System.out.println("----- 게시글 삭제 -----");
		System.out.print("삭제할 게시글 번호 : ");
		String num = sc.nextLine();
		
		for(int i=0; i<idx; i++) {
			if(voArr[i].getNo().equals(num)) {
				voArr[i] = null;
				System.out.println("게시글이 삭제되었습니다.");
				break;
			}
		}
	}
}
