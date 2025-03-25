package codeUp_S;

import java.util.Scanner;

public class IfElse_1206 {

	public static void main(String[] args) {
		
		// 1206 : 배수
		
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		if ((a>=b) && (a%b==0)) {
			int x = a/b;
			System.out.println(b+"*"+x+"="+a);
		}
		else if ((b>=a) && (b%a==0)) {
			int x = b/a;
			System.out.println(a+"*"+x+"="+b);
		}
		else {
			System.out.println("none");
		}
	}
}