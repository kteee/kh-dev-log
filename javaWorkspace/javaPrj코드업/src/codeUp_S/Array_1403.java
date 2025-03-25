package codeUp_S;

import java.util.Scanner;

public class Array_1403 {

	public static void main(String[] args) {
		
		// 1403 : 배열 두번 출력하기
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		int[] arr = new int[n];
		
		for(int i=0; i<n; i++) {
			arr[i] = sc.nextInt();
		}
		
		for(int i=0; i<2; i++) {
			for(int j=0; j<n; j++) {
				System.out.println(arr[j]);
			}
		}
	}
}
