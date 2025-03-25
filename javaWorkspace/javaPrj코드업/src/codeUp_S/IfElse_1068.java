package codeUp_S;

import java.util.Scanner;

public class IfElse_1068 {

	public static void main(String[] args) {
		
		// 1068 : [기초-조건/선택실행구조] 정수 1개 입력받아 평가 출력하기(설명)
		
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if (num >= 90) {
			System.out.println("A");
		}
		else if (num >= 70) {
			System.out.println("B");
		}
		else if (num >= 40) {
			System.out.println("C");
		}
		else {
			System.out.println("D");
		}
	}
}
