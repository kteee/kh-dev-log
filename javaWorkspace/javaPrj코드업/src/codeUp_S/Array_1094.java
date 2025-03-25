package codeUp_S;

import java.util.Scanner;

public class Array_1094 {

	public static void main(String[] args) {
		
		// 1094 : [기초-1차원배열] 이상한 출석 번호 부르기2(설명)
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		int[] arr = new int[n];
		
		for(int i=0; i<n; i++) {
			int num=sc.nextInt(); 
			arr[i] = num;
			// 굳이 int num 선언 안해도 아래처럼 바로 입력받은 숫자 배열에 넣기 가능
			// arr[i] = sc.nextInt();
		}
		
		for(int x=arr.length-1; x>=0; x--) {
			System.out.println(arr[x]);
		}
	}
}

	
