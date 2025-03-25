package codeUp_S;

import java.util.Scanner;

public class IfElse_1159 {

	public static void main(String[] args) {
		
		// 1159 : 특별한 공 던지기 3

		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if ((num >= 50 && num <=70) || (num%6 == 0)) {
			System.out.println("win");
		}
		else {
			System.out.println("lose");
		}
	}
}