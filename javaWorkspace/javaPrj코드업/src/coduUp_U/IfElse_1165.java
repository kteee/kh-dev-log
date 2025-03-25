package coduUp_U;

import java.util.Scanner;

public class IfElse_1165 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int time = sc.nextInt();
		int score = sc.nextInt();

		//추가 골 계산
		int extraTime = 90-time;
		score = score + (extraTime)/5 + 1;
		
		if(time%5 == 0) {
			score -= 1;
		}
		System.out.println(score);
	}
} 