package codeUp_S;

import java.util.Scanner;

public class IfElse_1203 {

	public static void main(String[] args) {
		
		// 1203 : 비만도 측정 0
		
		Scanner sc = new Scanner(System.in); 
		int bmi = sc.nextInt();
				
		if (bmi <= 10) {
			System.out.println("정상");
		}
		else if (bmi <= 20) {		
			System.out.println("과체중");
		}
		else {
			System.out.println("비만");
		}
	}
}
