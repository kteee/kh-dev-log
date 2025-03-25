package codeUp_S;

import java.util.Scanner;

public class IfElse_1214 {

	public static void main(String[] args) {
		
		// 1214 : 이 달은 며칠까지 있을까?
		
		Scanner sc = new Scanner(System.in);
		int year = sc.nextInt();
		int month = sc.nextInt();
		
		if ((month==1) || (month==3) || (month==5) || (month==7) || (month==8) || (month==10) || (month==12)) {
			System.out.println("31");
		}
		else if (month==2) {
			if((year%400==0) || ((year%4==0) && (year%100!=0))) {
				System.out.println("29");
			}
			else {
			 System.out.println("28");
			}
		}
		else {
			System.out.println("30");
		}
	}
}