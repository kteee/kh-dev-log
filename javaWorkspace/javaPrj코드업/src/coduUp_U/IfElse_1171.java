package coduUp_U;

import java.util.Scanner;

public class IfElse_1171 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		int num3 = sc.nextInt();
		
		
		System.out.print(num1);
		if(num2<10) {
			System.out.print("0"+num2);
		}
		else {
			System.out.print(num2);
		}
		
		if(num3<10) {
			System.out.print("00"+num3);
		}
		else if (num3<100) {
			System.out.print("0"+num3);
		}
		else {
			System.out.print(+num3);
		}
		
	
	}
} 