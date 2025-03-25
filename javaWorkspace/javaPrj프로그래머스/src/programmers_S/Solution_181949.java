package programmers_S;

import java.util.Scanner;

public class Solution_181949 {

	public static void main(String[] args) {
		
		// 181949_대소문자 바꿔서 출력하기
		
		Scanner sc = new Scanner(System.in);
		String a = sc.next();
		for(int i=0; i<a.length(); i++) {
			char ch = a.charAt(i);
			if(ch>=97 && ch<=122){
				ch -= 32;
			}
			else {
				ch += 32;
			}
			System.out.print(ch);
		}
	}
}
