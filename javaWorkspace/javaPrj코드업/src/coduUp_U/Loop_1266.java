package coduUp_U;

import java.util.Scanner;

public class Loop_1266 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int n = sc.nextInt();
		int result=0;
		for (int i=0; i<n; i++) {
			int num = sc.nextInt();
			result = result+num;
		}
		System.out.println(result);
	}
} 