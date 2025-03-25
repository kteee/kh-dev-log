package codeUp_S;

import java.util.Scanner;

public class IfElse_1228 {

	public static void main(String[] args) {
		
		// 1228 : 비만도 측정 1
		
		Scanner sc = new Scanner(System.in); 
		double height = sc.nextDouble();
		double weight = sc.nextDouble();
		
		double stdWeight = (height-100)*0.9;
		double bmi = (weight-stdWeight)*100/stdWeight;
		
		if(bmi <= 10) {
			System.out.println("정상");
		}
		else if (bmi <= 20) {
			System.out.println("과체중");
		}
		else {
			System.out.println("비만");
		}
	}
}
