package myPrj02;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		System.out.println("== 3 6 9 박수치기 (1~99까지의 숫자 입력) ==");
		
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if (num < 1 || num > 99) {
			System.out.println("1부터 99까지의 숫자를 입력해주세요.");
		}
		else {
			for (int i=1; i<=num; i++) {
				int a = i/10; // 10의 자리 판단
				int b = i%10; // 1의 자리 판단
					
				if ((a==3 || a==6 || a ==9) && (b==3 || b==6 || b==9)) {
					System.out.println("짝짝");
				}
				else if((a==3 || a==6 || a==9) || (b==3 || b==6 || b==9)) {
					System.out.println("짝");
				}
				else {
					System.out.println(i);
				}
			}
		}
	}
}
