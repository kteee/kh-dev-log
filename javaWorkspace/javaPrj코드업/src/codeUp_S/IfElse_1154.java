package codeUp_S;

import java.util.Scanner;

public class IfElse_1154 {

	public static void main(String[] args) {
		
		// 1154 : 큰수 - 작은수
		
		Scanner sc = new Scanner(System.in); 
		int x = sc.nextInt();
		int y = sc.nextInt();
		
		if(x >= y) {
			System.out.println(x-y);
		}
		else {
			System.out.println(y-x);
		}
	}
}
