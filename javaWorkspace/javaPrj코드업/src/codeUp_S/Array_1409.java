package codeUp_S;

import java.util.Scanner;

public class Array_1409 {

	public static void main(String[] args) {
		
		// 1409 : 기억력 테스트 1
		
		Scanner sc = new Scanner(System.in);
		
		int[] arr = new int[10];
		
		for(int i=0; i<arr.length; i++) {
			arr[i] = sc.nextInt();
		}
		
		// n번째 숫자 입력받기
		int num = sc.nextInt();
		System.out.println(arr[num-1]);	
	}
}
