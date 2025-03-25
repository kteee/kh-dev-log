package programmers_U;

import java.util.Scanner;

public class Solution003 {

	public static void main(String[] args) {
		
		// 중복된 숫자 개수
		Scanner sc = new Scanner(System.in);
		int[] array = new int[] {1, 1, 1, 3, 4, 5};
		int n = sc.nextInt();
		int answer = 0;
		for(int i=0; i<array.length; i++) {
			if (array[i]==n) {
				answer++;
			}
		}
		System.out.println(answer);
	}
}
