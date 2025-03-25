package manager;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import main.Main;

public class ShopController {

	private Scanner sc;
	private String managerId;
	private String managerPwd;
	private boolean isLogin;
	private int seq;
	
	public ShopController() {
		sc = new Scanner(System.in);
		managerId = "system";
		managerPwd = "1111";
		isLogin = false;
		Main.voList = new ArrayList<ItemVo>();
		seq = 1;
	}
	
	
	public void menu() {
		if (isLogin == false) {
			System.out.println("==== 관리자 로그인 ====");
			System.out.print("관리자 아이디 : ");
			String id = sc.nextLine();
			System.out.print("괸리자 비밀번호 : ");
			String pwd = sc.nextLine();
			
			if(id.equals(managerId) && pwd.equals(managerPwd)) {
				System.out.println("관리자 로그인 성공!");
				isLogin = true;
			}
			else {
				System.out.println("아이디 또는 비밀번호가 잘못되었습니다.");
				return;
			}
		}
		
		while(isLogin) {
			System.out.println("----- 관리자 메뉴 -----");
			System.out.println("1. 상품 관리");
			System.out.println("2. 회원 관리");
			System.out.println("9. 로그아웃");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : itemManagement(); break;
			case "2" : memberManagement(); break;
			case "9" : isLogin = true; System.out.println("로그아웃 되었습니다."); return;
			default : System.out.println("잘못된 번호입니다.");
			}
		}
	}
	
	public void itemManagement() {
		System.out.println("----- 상품 관리 -----");
		System.out.println("1. 전체 상품 목록");
		System.out.println("2. 상품 등록");
		System.out.println("3. 상품 수정");
		System.out.println("4. 상품 삭제");
		System.out.println("9. 이전 메뉴로 돌아가기");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : viewAllItem(); break;
		case "2" : enroll(); break;
		case "3" : edit(); break;
		case "4" : delete(); break;
		case "9" : return;
		default : System.out.println("잘못된 번호입니다.");
		}
	}
	
	public void memberManagement() {
		System.out.println("----- 회원 관리 -----");
		System.out.println("1. 회원 목록 조회");
		System.out.println("2. 회원 상세 조회");
		System.out.println("3. 회원 정보 수정");
		System.out.println("9. 이전 메뉴로 돌아가기");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
	}
	
	public void viewAllItem() {
		System.out.println("--- 전체 상품 목록 ---");
		System.out.println("No / Type / Name / Count / Price ");
		for (ItemVo vo : Main.voList) {
			System.out.println(vo.getItemNo() +" / " + vo.getType() + " / " + vo.getName() + " / " + vo.getCnt()+ " / " + vo.getPrice());
		}
	}
	
	public void enroll() {
		System.out.println("--- 상품 등록 ---");
		System.out.print("상품종류 : ");
		String type = sc.nextLine();
		System.out.print("상품명 : ");
		String name = sc.nextLine();
		System.out.print("개수 : ");
		int cnt = sc.nextInt();
		System.out.print("가격 : ");
		int price = sc.nextInt();
		sc.nextLine();
		
		String no = String.valueOf(seq);
		ItemVo vo = new ItemVo(no, type, name, cnt, price);
		seq++;
		
		Main.voList.add(vo);
	}
	
	public void edit() {
		System.out.println("--- 상품 수정 ---");
		System.out.print("수정할 상품 번호 : ");
		String num = sc.nextLine();
		
		System.out.print("수정 개수 : ");
		int cnt = sc.nextInt();
		System.out.print("수정 가격 : ");
		int price = sc.nextInt();
		sc.nextLine();
		
		for (ItemVo vo : Main.voList) {
			if(vo.getItemNo().equals(num)) {
				vo.setCnt(cnt);
				vo.setPrice(price);
				System.out.println("수정 되었습니다.");
				break;
			}
		}		
	}
	
	public void delete() {
		System.out.println("--- 상품 삭제 ---");
		System.out.print("삭제할 상품 번호 : ");
		String num = sc.nextLine();
		for (ItemVo vo : Main.voList) {
			if(vo.getItemNo().equals(num)) {
				Main.voList.remove(vo);
				System.out.println("삭제 되었습니다.");
				break;
			}
		}
	}
}
