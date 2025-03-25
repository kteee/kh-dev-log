package coduUp_U;

import java.util.Scanner;

public class Loop_1281 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		int x;
		int result=0;
		for(x=a; x<=b; x++) {
			if (x%2 == 0) {
				System.out.print("-"+x);
				result = result-x;
			}
			else {
				if(x==a) {
					System.out.print(x);
				}
				else {
					System.out.print("+"+x);
					result = result+x;
				}
			}
		}
		System.out.print("="+result);
			
	}
}