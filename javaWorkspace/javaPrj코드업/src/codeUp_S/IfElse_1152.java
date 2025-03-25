package codeUp_S;

import java.util.Scanner;

public class IfElse_1152 {

	public static void main(String[] args) {
		
		// 1152 : 10보다 작은 수 (else 버전)
		
		Scanner sc = new Scanner(System.in);
		int x = sc.nextInt();
		
		if(x < 10) {
			System.out.println("small");
		}
		else {
			System.out.println("big");		
		}
	}
}
