package programmers_S;

import java.util.Scanner;

public class Solution_181942 {

	public static void main(String[] args) {
		
		// 181942_문자열 섞기
		
		Scanner sc = new Scanner(System.in);
		String str1 = sc.nextLine();
		String str2 = sc.nextLine();
		
		char[] ch = new char[str1.length()+str2.length()];
		
		for(int i=0, j=0; i<str1.length(); i++, j+=2) {
			ch[j] = str1.charAt(i);
			System.out.print(ch[j]);
			ch[j+1] = str2.charAt(i);
			System.out.print(ch[j+1]);
		}
		
		/* 위 코드 개선 -> char 배열 안써도 바로 해결 가능
		for(int i=0; i<str1.length(); i++) {
			System.out.print(str1.charAt(i));
			System.out.print(str2.charAt(i));
		}
		*/
	}
}
