package codeUp_S;

import java.util.Scanner;

public class IfElse_1164 {

	public static void main(String[] args) {
		
		// 1164 : 터널 통과하기 1
		
		Scanner sc = new Scanner(System.in);
		int tunnel1 = sc.nextInt();
		int tunnel2 = sc.nextInt();
		int tunnel3 = sc.nextInt();
		
		if ((tunnel1>170) && (tunnel2>170) && (tunnel3>170) ) {
			System.out.println("PASS");
		}
		else {
			System.out.println("CRASH");
		}
	}
}