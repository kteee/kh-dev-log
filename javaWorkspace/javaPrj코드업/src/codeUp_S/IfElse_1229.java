package codeUp_S;

import java.util.Scanner;

public class IfElse_1229 {

	public static void main(String[] args) {
	
		// 1229 : 비만도 측정 2
		
		Scanner sc = new Scanner(System.in); 
		double height = sc.nextDouble();
		double weight = sc.nextDouble();
				
		double stdWeight;
		
		if (height < 150) {
			stdWeight = height - 100;
		}
		else if (height < 160) {
			stdWeight = (height - 150)/2 + 50;
		}
		else {
			stdWeight = (height - 100) * 0.9;
		}
		
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
