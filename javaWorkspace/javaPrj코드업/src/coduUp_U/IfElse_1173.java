package coduUp_U;

import java.util.Scanner;

public class IfElse_1173 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int hour = sc.nextInt();
		int minute = sc.nextInt();
		
		if (minute <= 30) {
			hour -= 1;
			minute = 30+minute;
		}
		else {
			minute = minute-30;
		}
		
		if(hour == -1) {
			hour = 23;
		}
		
		System.out.println(hour+" "+minute);

	}
} 