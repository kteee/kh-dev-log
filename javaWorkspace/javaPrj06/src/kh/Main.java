package kh;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		System.out.println("== 업다운게임 : 1~50 사이의 숫자 맞추기 ==");
		
		//정답 숫자
		int answer = 25;
		boolean isEnd=false;
		//업다운 또는 정답인지 판단하기
		while (isEnd==false) {
			//유저가 정답 입력하기
			Scanner sc = new Scanner(System.in);
			int x = sc.nextInt();
			
			if (x>=1 && x<answer) {
				System.out.println("업");
			}
			else if (x == answer) {
				System.out.println("정답");
				isEnd=true;
			}
			else if (x<=50 && x>answer) {
				System.out.println("다운");
			}
			else {
				System.out.println("1~50 사이의 숫자를 입력해주세요.");
			}
		}
		
	}

}
