package codeUp_S;

import java.util.Scanner;

public class IfElse_1156 {

	public static void main(String[] args) {
		
		// 1156 : 홀수 짝수 구별
		
		Scanner sc = new Scanner(System.in); 
		int x = sc.nextInt();
		
		if(x%2 == 0) {
			System.out.println("even");
		}
		else {
			System.out.println("odd");
		}
	}
}
