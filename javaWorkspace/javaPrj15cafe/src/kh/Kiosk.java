package kh;

import java.util.Scanner;

public class Kiosk {

	OrderInfo info = new OrderInfo();
	
	String menu01name = "아메리카노";  // 초기화 안하고 선언만 할 경우 초기값 null
	String menu02name = "카페라떼";
	String menu03name = "녹차";
	
	int menu01price = 1000;  // 초기화 안하고 선언만 할 경우 초기값 0
	int menu02price = 2000;
	int menu03price = 3000;
	
	
	// 메뉴 선택(+수량)
	public void selectMenu () {
		// 메뉴판 보여주기
		System.out.println("======= MENU =======");
		System.out.println("1. " + menu01name + " / " + menu01price + "원");
		System.out.println("2. " + menu02name + " / " + menu02price + "원");
		System.out.println("3. " + menu03name + " / " + menu03price + "원");
		System.out.println("====================");

		// 유저에게 메뉴 입력받기
		Scanner sc = new Scanner(System.in);
		boolean isOk = false; 
		while (!isOk) {
			System.out.print("메뉴 번호 선택 : ");
			int num = sc.nextInt();
			
			switch (num) {
			case 1 : 
				info.menu = menu01name; 
				info.menuPrice = menu01price;
				isOk = true;
				break;
			case 2 : 
				info.menu = menu02name; 
				info.menuPrice = menu02price;
				isOk = true;
				break;
			case 3 : 
				info.menu = menu03name; 
				info.menuPrice = menu03price;
				isOk = true;
				break;
			default : 
				System.out.println("== 잘못 선택하였습니다. ==");
			}
		}
		
		// 유저에게 수량 입력받기
		System.out.print("수량 선택 : ");
		info.cnt = sc.nextInt();
	}
	
	// 주문 내용 출력 (메뉴, 수량, 총 가격)
	public void printOrder() {
		System.out.println("====== 주문내역 ======");
		System.out.println("메뉴 : " + info.menu);
		System.out.println("수량 : " + info.cnt);
		System.out.println("가격 : " + info.menuPrice * info.cnt);
		System.out.println("====================");
	}
	
	// 결제(+방법)
	
	// 포장여부
	
	// 취소
	
}
