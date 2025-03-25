package com.kh.main;

import java.util.Scanner;

public class Manager {
	
	//String name;
	//int price;
	//int cnt;
	Scanner sc = new Scanner(System.in);
	
	Product productArr[] = new Product[100];
	int enrollNum=0;
	
	// 메뉴 출력하기
	public void printMenu () {
		System.out.println("---- MENU ----"); 
		System.out.println("1. 상품 등록"); 
		System.out.println("2. 상품 전체 조회"); 
		System.out.println("3. 상품 재고 입고(플러스)"); 
		System.out.println("4. 상품 재고 출고(마이너스)"); 
		System.out.println("9. 프로그램 종료"); 
	}
	
	// 상품등록
	public void enroll () {
		System.out.println("---- 상품 등록 ----");
		
		// 상품정보 입력받기
		System.out.print("상품 이름 : ");
		String name = sc.nextLine();
		System.out.print("상품 가격 : ");
		int price = Integer.parseInt(sc.nextLine()); // 입력받은 문자열을 정수로 바꾸기
		System.out.print("상품 개수 : ");
		int cnt = Integer.parseInt(sc.nextLine());
		
		// 상품 객체 만들기
		Product product = new Product();
		product.name = name;
		product.price = price;
		product.cnt = cnt;
		
		// 객체를 저장해두기
		productArr[enrollNum] = product; 
		enrollNum++;
	}
	
	// 재고확인
	public void printAllProduct () {
		// 저장된 상품 정보 출력
		System.out.println("-- All product --");
		for(int i=0; i<enrollNum; i++) {
		System.out.println(i+1 + ". " + productArr[i].name + " / " + productArr[i].price + "원 / " + productArr[i].cnt + "개");
		}
	}
	
	// 상품명, 개수 입력받기
	public void plus () {
		System.out.println("- 상품 재고 입고 (플러스) -");
		System.out.print("입고할 상품 이름 : ");
		String s = sc.nextLine();
		System.out.print("입고할 상품 개수 : ");
		int n = sc.nextInt();
		sc.nextLine();
		plus(s,n);  // 메서드 이름이 같아도 매개변수에 따라 다른 메서드로 취급됨 (오버로딩)
	}
	
	// 재고플러스
	public void plus (String productName, int productCnt) {
		// 특정 상품 객체 찾아서 cnt 값을 증가시키기
		for (int i=0; i<enrollNum; i++) {
			if (productArr[i].name.equals(productName)) {
				productArr[i].cnt += productCnt;
				System.out.println(productName + " " + productCnt + "개 입고 처리 완료");
				return; // 원래 메소드로 돌아가라 
			}
		}
		System.out.println("상품을 찾을 수 없습니다. 상품 이름을 확인해주세요.");
	}
	
	// 상품명, 개수 입력받기
	public void minus () {
		System.out.println("- 상품 재고 출고 (마이너스) -");
		System.out.print("출고할 상품 이름 : ");
		String s = sc.nextLine();
		System.out.print("출고할 상품 개수 : ");
		int n = sc.nextInt();
		sc.nextLine();
		minus(s,n);  // 메서드 이름이 같아도 매개변수에 따라 다른 메서드로 취급됨 (오버라이딩)
	}
	    
	// 재고마이너스
	public void minus (String productName, int productCnt) {
		// 특정 상품 객체 찾아서 cnt 값을 증가시키기
		for (int i=0; i<enrollNum; i++) {
			if (productArr[i].name.equals(productName)) {
				productArr[i].cnt -= productCnt;
				System.out.println(productName + " " + productCnt + "개 출고 처리 완료");
				return; // 원래 메서드로 돌아가라 
			}
		}
		System.out.println("상품을 찾을 수 없습니다. 상품 이름을 확인해주세요.");
	}
}
