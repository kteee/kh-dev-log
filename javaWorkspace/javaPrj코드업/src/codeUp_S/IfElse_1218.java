package codeUp_S;

import java.util.Scanner;

public class IfElse_1218 {

	public static void main(String[] args) {
		
		// 1218 : 삼각형 판단하기
		
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		
		if (a + b > c)  // 삼각형 성립조건 (두 변의 길이의 합이 나머지 한 변의 길이보다 커야함)
		{
			if ((a==b) && (b==c) && (a==c)) {
				System.out.println("정삼각형");
			}
			else if ((a==b) || (b==c) || (a==c)) {
				System.out.println("이등변삼각형");
			}
			else if ((a*a)+(b*b)==(c*c)) {
				System.out.println("직각삼각형");
			}
			else if ((a<=b) && (b<=c)) {
				System.out.println("삼각형");
			}
			else {
				System.out.println("삼각형아님");
			}
		}
		else {
			System.out.println("삼각형아님");
		}
	}
}