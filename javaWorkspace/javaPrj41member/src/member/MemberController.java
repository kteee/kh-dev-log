package member;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MemberController {

	private Scanner sc;
	private List<MemberVo> voArr;
	
	public MemberController() {
		sc = new Scanner(System.in);
		voArr = new ArrayList<MemberVo>();
	}
	
	// menu
	public void menu() throws Exception {
		System.out.println("1. 회원가입");
		System.out.println("2. 로그인");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : join(); break;
		case "2" : login(); break;
		}
		
	}
	
	// join
	public void join() throws Exception {
		System.out.println("--- Join ---");
		System.out.print("ID : ");
		String id = sc.nextLine();
		System.out.print("PASSWORD : ");
		String pwd = sc.nextLine();
		
		MemberVo vo = new MemberVo(id, pwd);
		//voArr.add(vo);
		//System.out.println("회원가입 완료!");
		
		// 메모장에 MemberVo 데이터 저장하기
		
		// "D:\member.txt" 파일을 객체로 준비
		File f = new File("D:"+File.separator+"member.txt");
		
		// 통로 준비
		FileWriter fw = new FileWriter(f, true); 
		// 두번째 인자값에 true 넣어주면 프로그램 실행될때마다 덮어쓰기 되지않고 이어서 통로 이용 가능
		
		// 문자열 내보내기
		fw.write(id + "/" + pwd + "\n");
		fw.close();
	}
	
	// login
	public void login() throws Exception {
		System.out.println("--- Login ---");
		System.out.print("ID : ");
		String id = sc.nextLine();
		System.out.print("PASSWORD : ");
		String pwd = sc.nextLine();
		
		/*
		for(MemberVo vo : voArr) {
			if(vo.getId().equals(id) && vo.getPwd().equals(pwd)) {
				System.out.println("로그인 성공!");
				return;
			}
		}
		*/
		
		// 메모장에 MemberVo 데이터 불러오기
		
		// 파일 객체 준비
		File f = new File("D:"+File.separator+"member.txt");
		
		// 통로 준비
		FileReader fr = new FileReader(f);
		BufferedReader br = new BufferedReader(fr);
		
		
		while(true) {
			// 데이터 읽어오기
			String str = br.readLine();
			if(str == null) {
				break;
			}
			
			// 일치하는 데이터 찾기
			String memoId = str.substring(0, str.indexOf("/"));
			String memoPwd = str.substring(str.indexOf("/")+1);
			
			if(id.equals(memoId) && pwd.equals(memoPwd)) {
				System.out.println("로그인 성공!");
				return;
			}
			
		}
		System.out.println("로그인 실패..");
	}
}
