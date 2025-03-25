package codeUp_S;

import java.util.Scanner;

public class IfElse_1230 {

	public static void main(String[] args) {
		
		// 1230 : 터널 통과하기 2
		
		Scanner sc = new Scanner(System.in);
		int tunnel1 = sc.nextInt();
		int tunnel2 = sc.nextInt();
		int tunnel3 = sc.nextInt();
		
		if (tunnel1<=170) {
			System.out.println("CRASH");
			System.out.println(tunnel1);
		}
		else if (tunnel2<=170) {
			System.out.println("CRASH");
			System.out.println(tunnel2);
		}
		else if (tunnel3<=170) {
			System.out.println("CRASH");
			System.out.println(tunnel3);
		}
		else {
			System.out.println("PASS");
		}
	}
}