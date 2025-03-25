package codeUp_S;

import java.util.Scanner;

public class IfElse_1201 {

	public static void main(String[] args) {
		
		// 1201 : 정수 판별
		
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if (num > 0) {
			System.out.println("양수");
		}
		else if (num == 0) {
			System.out.println("0");
		}
		else {
			System.out.println("음수");
		}
	}
}