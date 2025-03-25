package com.kh.main;

import java.util.Scanner;

public class Manager {

	Scanner sc = new Scanner(System.in);
	Book[] bookArr = new Book[100];
	int idx;  // 멤버변수 선언만 하는 경우 기본값 0으로 셋팅됨
	
	// 도서 등록
	public void enrollBook() {
		System.out.println("--- 도서 등록 ---");
		// 데이터 입력받기
		System.out.print("도서 제목 : ");
		String name = sc.nextLine();
		System.out.print("도서 장르 : ");
		String genre = sc.nextLine();
	
		// 객체 만들기
		Book book = new Book();
		book.no = idx+1;
		book.name = name;
		book.genre = genre;
		
		// 객체 저장하기
		bookArr[idx] = book;
		idx++;
	}
	
	// 도서 목록 조회
	public void printAllBook() {
		System.out.println("-- 전체 도서 목록 --");
		for (int i=0; i<idx; i++) {
			if (bookArr[i] != null)
			System.out.println(bookArr[i].no +" / " + bookArr[i].name + " / " + bookArr[i].genre);
		}
	}
	
	// 상세 조회할 도서번호 입력받기
	public void printBook() {
		System.out.print("도서 번호 입력 : ");
		String num = sc.nextLine();
		int n = Integer.parseInt(num);
		printBook(n);
	}
	
	// 도서 상세 조회
	public void printBook(int num) {
		for(int i=0; i<idx; i++) {
			if (bookArr[i].no == num) {
				System.out.println(bookArr[i].no + " / " + bookArr[i].name + " / " + bookArr[i].genre);
				return;
			}
		}
		System.out.println("도서 정보가 없습니다. 도서 번호를 확인해주세요.");
	}

	// 도서 삭제
	public void deleteBook() {
		System.out.println("-- 도서 삭제 --");
		System.out.print("삭제할 도서 번호 입력 : ");
		String str = sc.nextLine();
		int dnum = Integer.parseInt(str);
	
		if (bookArr[dnum-1].no == dnum) {
			bookArr[dnum-1] = null;
			System.out.println("해당 도서가 삭제되었습니다.");
		}
		else {
			System.out.println("도서 정보가 없습니다. 도서 번호를 확인해주세요.");
		}
	}
}

