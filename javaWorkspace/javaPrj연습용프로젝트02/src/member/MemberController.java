package member;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import main.Main;
import manager.ShopController;
import manager.ItemVo;

public class MemberController {

	private Scanner sc;
	private List<MemberVo> memberArr;
	private int seq;
	private List<OderVo> orderArr;
	private int orderSeq;

	public MemberController() {
		sc = new Scanner(System.in);
		memberArr = new ArrayList();
		seq = 1;
		orderArr = new ArrayList();
		orderSeq = 1;
	}
	
	// 메뉴 (로그인 전)
	public void menu() {

		while(true) {
			System.out.println("==== 회원 메뉴 ====");
			System.out.println("1. 로그인");
			System.out.println("2. 회원가입");
			System.out.println("9. 이전 메뉴로 돌아가기");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : login(); break;
			case "2" : join(); break;
			case "9" : return;
			default : System.out.println("잘못된 번호입니다.");
			}
		}
	}
	
	// 메뉴 (로그인 후)
	public void memberMenu() {
		
		while(true) 
		{
			System.out.println("==== 회원 메뉴 ====");
			System.out.println("1. 상품 주문");
			System.out.println("2. 나의 주문내역");
			System.out.println("9. 로그아웃");
			System.out.print("메뉴 번호 선택 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : orderItem(); break;
			case "2" : viewOrder(); break;
			case "9" : return;
			default : System.out.println("잘못된 번호입니다.");
			}
		}
	}
	
	
	// 회원가입
	public void join() {
		System.out.println("---- 회원가입 ----");
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		System.out.print("닉네임 : ");
		String nick = sc.nextLine();
//		System.out.print("전화번호 : ");
//		String phone = sc.nextLine();
//		System.out.print("주소 : ");
//		String adress = sc.nextLine();
		String no = String.valueOf(seq);
		
		MemberVo member = new MemberVo(no, id, pwd, nick, "1111", "1111");
		memberArr.add(member);
		seq++;
		System.out.println("회원가입 성공!");
	}
		
	// 로그인
	public void login() {
		System.out.println("---- 로그인 ----");
		System.out.print("아이디 : ");
		String id = sc.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = sc.nextLine();
		
		for(MemberVo vo : memberArr) {
			if(vo.getId().equals(id) && vo.getPwd().equals(pwd)) {
				Main.LoginMemberVo = vo;
				System.out.println("로그인 성공!");
				memberMenu();
				return;
			}
		}
		System.out.println("로그인 실패...");
	}
	
	public void orderItem() {
		System.out.println("--- 전체 상품 목록 ---");
		System.out.println("No / Type / Name / Count / Price ");
		for (ItemVo vo : Main.voList) {
			System.out.println(vo.getItemNo() +" / " + vo.getType() + " / " + vo.getName() + " / " + vo.getCnt()+ " / " + vo.getPrice());
		}
		System.out.println("------------------------------");
		System.out.print("주문할 상품 번호 : ");
		String num = sc.nextLine();
		System.out.print("주문 개수 : ");
		int cnt = sc.nextInt();
		sc.nextLine();
		
		for (ItemVo vo : Main.voList) {
			if (vo.getItemNo().equals(num)) {
				OderVo oder = new OderVo(vo.getItemNo(), vo.getType(), vo.getName(), cnt, vo.getPrice(), cnt*vo.getPrice());
				orderSeq++;
				orderArr.add(oder);
				vo.setCnt(vo.getCnt()-cnt);
				System.out.println("주문이 완료되었습니다.");
			}
		}
	}
	
	public void viewOrder() {
		System.out.println("------- 나의 주문내역 -------");
		System.out.println("No / 상품종류 / 상품명 / 주문개수 / 가격 / 총 주문금액 ");
		for (OderVo vo : orderArr) {
			System.out.println(vo.getOderNo() + " / " + vo.getType() + " / " + vo.getName() +
					" / " + vo.getCnt()+" / "+vo.getPrice()+" / "+vo.getTotalPrice());
		}
	}
}
