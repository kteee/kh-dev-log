package codeUp_S;

import java.util.Scanner;

public class Array_1093 {

	public static void main(String[] args) {
		
		// 1093 : [기초-1차원배열] 이상한 출석 번호 부르기1(설명)
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		// 입력받은 출석번호 저장하는 배열 
		int arr[] = new int[23];
		
		for(int i=0; i<n; i++) {
			int num = sc.nextInt();
			arr[num-1] = arr[num-1]+1;
			}

		for(int x=0; x<arr.length; x++) {
			System.out.println(arr[x]);
		}
	}
}
