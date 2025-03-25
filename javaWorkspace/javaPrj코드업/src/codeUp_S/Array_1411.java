package codeUp_S;

import java.util.Scanner;

public class Array_1411 {

	public static void main(String[] args) {
		
		// 1411 : 빠진 카드
		
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		int[] arr = new int[n];
		
		for(int i=0; i<n-1; i++) {
			int num = sc.nextInt();
			arr[num-1] = num;
		}
		for(int x=0; x<n; x++) {
			if(arr[x] == 0) {
				System.out.println(x+1);
			}
		}
	}
}