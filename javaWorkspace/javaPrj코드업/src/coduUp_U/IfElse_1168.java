package coduUp_U;

import java.util.Scanner;

public class IfElse_1168 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		
		int age;
		
		if(num2==1 || num2==2) {
			age = 2012- ( (num1/10000)+1900 ) +1;
			System.out.println(age);
		}
		else {
			age = 2012- ( (num1/10000)+2000 ) +1;
			System.out.println(age);
		}
	}
} 