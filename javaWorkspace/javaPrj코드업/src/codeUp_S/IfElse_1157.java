package codeUp_S;

import java.util.Scanner;

public class IfElse_1157 {

	public static void main(String[] args) {
	
		// 1157 : 특별한 공 던지기 1 
		
		Scanner sc = new Scanner(System.in); 
		double x = sc.nextDouble();
		
		if(x >= 50 && x <= 60) {
			System.out.println("win");
		}
		else {
			System.out.println("lose");
		}
	}
}
