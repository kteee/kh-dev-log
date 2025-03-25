package programmers_S;

import java.util.Scanner;

public class Solution_181939 {

	public static void main(String[] args) {
		
		// 181939_더 크게 합치기
		
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		int num1 = Integer.parseInt(Integer.toString(a)+Integer.toString(b));
		int num2 = Integer.parseInt(Integer.toString(b)+Integer.toString(a));
		int answer = 0;
		
		if(num1>=num2) {
			answer = num1;
		}
		else {
			answer = num2;
		}
		
		// int answer = (num1 >= num2) ? num1 : num2;
		
		System.out.println(answer);
	}

}
