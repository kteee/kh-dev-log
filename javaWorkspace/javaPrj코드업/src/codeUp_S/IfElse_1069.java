package codeUp_S;

import java.util.Scanner;

public class IfElse_1069 {

	public static void main(String[] args) {
		
		// 1069 : [기초-조건/선택실행구조] 평가 입력받아 다르게 출력하기(설명)
		
		Scanner sc = new Scanner(System.in);
		String str = sc.next();
		char ch = str.charAt(0);
		
		switch (ch) {
		case 'A' : System.out.println("best!!!");
				break;
		case 'B' : System.out.println("good!!");
				break;
		case 'C' : System.out.println("run!");
				break;
		case 'D' : System.out.println("slowly~");
				break;
		default : System.out.println("what?");
		}
		
		//if문
		/*
		if(ch=='A') {
			System.out.println("best!!!");
		}
		else if (ch=='B') {
			System.out.println("good!!");
		}
		else if (ch=='C') {
			System.out.println("run!");
		}
		else if (ch=='D') {
			System.out.println("slowly~");
		}
		else {
			System.out.println("what?");
		}
		*/
	}
}