package programmers_U;

import java.util.Scanner;

public class Solution001 {

	public static void main(String[] args) {
		
		// 카운트 업
		Scanner sc = new Scanner(System.in);
		int start_num = sc.nextInt();
		int end_num = sc.nextInt();
		int[] answer = new int[end_num-start_num+1];
		for(int i=0; i<answer.length; i++) {
			answer[i] = start_num;
			start_num++;
		}
		for(int i=0; i<answer.length; i++) {
			System.out.println(answer[i]);
		}
		
	}
}