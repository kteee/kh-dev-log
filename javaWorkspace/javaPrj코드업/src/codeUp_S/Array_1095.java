package codeUp_S;

import java.util.Scanner;

public class Array_1095 {

	public static void main(String[] args) {
		
		// 1095 : [기초-1차원배열] 이상한 출석 번호 부르기3(설명)
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		int[] arr = new int[n];
		
		for(int i=0; i<n; i++) {
			arr[i] = sc.nextInt();
		}
		
		//가장 작은 수를 저장하는 변수
		int min = arr[0];
		for (int i=1; i<arr.length; i++) {
			if(min >= arr[i]) {
				min = arr[i];
			}
		}
		System.out.println(min);
	}
}
