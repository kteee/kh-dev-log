package kh;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		System.out.println("=== up down (1~50까지의 숫자를 입력하세요.) ===");
		
		Scanner sc = new Scanner(System.in);
		
		int answer = (int) (Math.random()*50+1);
		boolean isAnswer = false;
		int cnt = 0;
		
		while (!isAnswer) {  // false 값 들어가면 안돌아감
			int num = sc.nextInt();
			cnt++;
			if (num > answer) {
				System.out.println("다운");
			}
			else if (num == answer) {
				System.out.println("정답");
				System.out.println("총 시도횟수 : " + cnt);
				isAnswer = true;
			}
			else {
				System.out.println("업");
			}
		}
	}
}
