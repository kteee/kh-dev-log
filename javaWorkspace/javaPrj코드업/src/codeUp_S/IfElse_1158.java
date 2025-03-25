package codeUp_S;

import java.util.Scanner;

public class IfElse_1158 {

	public static void main(String[] args) {

		// 1158 : 특별한 공 던지기 2
		
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if ((num >= 30 && num <=40) || (num>=60 && num<=70)) {
			System.out.println("win");
		}
		else {
			System.out.println("lose");
		}
	}
}
