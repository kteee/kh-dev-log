package myPrj01;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		System.out.println("== 1~10까지의 숫자 맞추기 (기회는 3번!) ==");
		
		// 정답숫자 
		int answer = 7;
		// 남은기회
		int chance = 3;
		// 정답여부
		boolean isEnd = false;

		// 숫자 맞추기
		while (isEnd == false && chance > 0) {
			// 사용자에게 숫자(정수) 입력받기
			Scanner sc = new Scanner(System.in);
			int num = sc.nextInt();
			
			if (num != answer) {
				chance--;
				System.out.println("정답이 아닙니다. (남은기회: "+chance+"번)");
			}
			else if (num == answer) {
				System.out.println("정답입니다.");
				isEnd = true;
			}
			else {
				System.out.println("1~10 사이의 숫자를 입력해주세요.");
			}
		}
	}
}