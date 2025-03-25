package codeUp_S;

import java.util.Scanner;

public class Array_1402 {

	public static void main(String[] args) {
		
		// 1402 : 거꾸로 출력하기 3
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		int[] arr = new int[n];
		
		for(int i=0; i<n; i++) {
			arr[i] = sc.nextInt();
		}
		
		for(int x=n-1; x>=0; x--) {
			System.out.println(arr[x]);
		}
	}
}
