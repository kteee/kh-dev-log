package programmers_S;

import java.util.Scanner;

public class Solution_181945 {
	
	public static void main(String[] args) {
		
		// 181945_문자열 돌리기
		
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
		for (int i=0; i<str.length(); i++) {
			System.out.println(str.charAt(i));
		}
	}
}
