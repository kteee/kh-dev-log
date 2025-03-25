package board;

import java.util.Scanner;

import main.Main;

public class BoardManager {
	
	// private Scanner sc = new Scanner(System.in); 
	// private BoardVo voArr[] = new BoardVo[100];
	// private int idx = 0;
	// 아래와 같이도 쓸 수 있음 (생성자 안에서 초기화)
	
	private Scanner sc; 
	private BoardVo voArr[]; 
	private int idx;
	private int end;
	
	public BoardManager() {
		this.sc = new Scanner(System.in);
		voArr = new BoardVo[100];
		idx = 0;
		end = 0;
	}
	
	// 전체 메뉴 
	public void menu() {
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 목록조회");
		System.out.println("3. 게시글 상세조회");
		System.out.println("4. 게시글 삭제");
		System.out.println("9. 프로그램 종료");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();

		switch(num) {
		case "1" : write(); break;
		case "2" : selectList(); break;
		case "3" : selectDetail(); break;
		case "4" : delete(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return;
		default : System.out.println("잘못된 번호입니다.");
		}
	}


	// 게시글 작성
	public void write() {
		// 데이터(제목, 내용, 작성자)를 입력받기
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("내용 : ");
		String content = sc.nextLine();
		System.out.print("작성자 : ");
		String writer = sc.nextLine();
		
		// 입력받은 데이터를 객체로 만들기
		BoardVo vo = new BoardVo();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		
		// 객체 저장
		voArr[idx] = vo;
		idx++;
	}
	
	// 게시글 목록조회
	public void selectList() {
		System.out.println("----- 게시글 목록 -----");
		for(int i=0; i<idx; i++) {
			System.out.println(voArr[i]); // voArr[i]는 voArr[i].toString()와 같음
			// System.out.println(voArr[i].toString());  
		}
	}
	
	// 게시글 상세조회
	public void selectDetail() {
		
	}
	
	// 게시글 삭제
	public void delete() {
		
	}

}
