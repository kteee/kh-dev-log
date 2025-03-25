package coduUp_U;

import java.util.Scanner;

public class IfElse_1226 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int lotto1 = sc.nextInt();
		int lotto2 = sc.nextInt();
		int lotto3 = sc.nextInt();
		int lotto4 = sc.nextInt();
		int lotto5 = sc.nextInt();
		int lotto6 = sc.nextInt();
		int bonus = sc.nextInt();
		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		int num3 = sc.nextInt();
		int num4 = sc.nextInt();
		int num5 = sc.nextInt();
		int num6 = sc.nextInt();
		
		int x=0; // 당첨
		int y=0; // 보너스
		
		if(lotto1 == num1 || lotto1 == num2 || lotto1==num3 || lotto1==num4 || lotto1==num5 || lotto1 ==num6) {
			x++;
		}
		if(lotto2 == num1 || lotto2 == num2 || lotto2==num3 || lotto2==num4 || lotto2==num5 || lotto2 ==num6) {
			x++;
		}
		if(lotto3 == num1 || lotto3 == num2 || lotto3==num3 || lotto3==num4 || lotto3==num5 || lotto3 ==num6) {
			x++;
		}
		if(lotto4 == num1 || lotto4 == num2 || lotto4==num3 || lotto4==num4 || lotto4==num5 || lotto4 ==num6) {
			x++;
		}
		if(lotto5 == num1 || lotto5 == num2 || lotto5==num3 || lotto5==num4 || lotto5==num5 || lotto5 ==num6) {
			x++;
		}
		if(lotto6 == num1 || lotto6 == num2 || lotto6==num3 || lotto6==num4 || lotto6==num5 || lotto6 ==num6) {
			x++;
		}
		if(bonus == num1 || bonus == num2 || bonus==num3 || bonus==num4 || bonus==num5 || bonus ==num6) {
			y++;
		}
		
		if (x==6) {
			System.out.println("1등");
		}
		else if (x==5 && y==1) {
			System.out.println("2등");
		}
		else if (x==5) {
			System.out.println("3등");
		}
		else if (x==4) {
			System.out.println("4등");
		}
		else if (x==3) {
			System.out.println("5등");
		}
		else {
			System.out.println("꽝");
		}
	}
}