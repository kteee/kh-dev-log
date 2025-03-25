package codeUp_S;

import java.util.Scanner;

public class IfElse_1155 {

	public static void main(String[] args) {
		
		// 1155 : 7의 배수
		
		Scanner sc = new Scanner(System.in); 
		int x = sc.nextInt();
		int y = x%7;
		
		if(y == 0) {
			System.out.println("multiple");
		}
		else {
			System.out.println("not multiple");
		}
	}
}
