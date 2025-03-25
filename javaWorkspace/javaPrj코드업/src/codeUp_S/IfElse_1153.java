package codeUp_S;

import java.util.Scanner;

public class IfElse_1153 {

	public static void main(String[] args) {
		
		// 1153 : 두 수의 대소 비교
			
		// 여러개의 값을 입력 받는 경우  Scanner 여러번 선언해도 되지만 한번만 선언해도 됨 (코드업은 여러번 선언하면 오류남)
		Scanner sc = new Scanner(System.in); 
		int x = sc.nextInt();
		int y = sc.nextInt();
				
		if(x > y) {
			System.out.println(">");
		}
		else if (x == y) {
			System.out.println("=");		
		}
		else {
			System.out.println("<");
		}	
	}
}
