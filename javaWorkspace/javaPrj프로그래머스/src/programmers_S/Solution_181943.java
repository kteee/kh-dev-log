package programmers_S;

import java.util.Scanner;

public class Solution_181943 {

	public static void main(String[] args) {
		
		// 181943_문자열 겹쳐쓰기
		
		Scanner sc = new Scanner(System.in);
		String my_string = sc.nextLine();
		String overwrite_string = sc.nextLine();
		int s = sc.nextInt();

		// 1. 반복문으로 풀기
		/*
        String str1 = "";
        String str2 = "";
        for(int i=0; i<s; i++) {
            char ch = my_string.charAt(i);
            str1 += ch;
        }
        for (int i=s+overwrite_string.length(); i<my_string.length(); i++) {
            char ch = my_string.charAt(i);
            str2 += ch;
        }

        System.out.println(str1 + overwrite_string + str2);
    	*/
		
		// 2. 배열로 풀기
		// toCharArray() : String 문자열을 char형 배열로 바꿔서 반환해주는 메서드
		// char[] ch = my_string.toCharArray(); 로 사용 가능
		/*
		char[] ch = new char[my_string.length()];
		for(int i=0; i<my_string.length(); i++) {
			ch[i] = my_string.charAt(i);
		}
		for(int i=0; i<overwrite_string.length(); i++, s++) {
			ch[s] = overwrite_string.charAt(i);
		}
		for(int i=0; i<ch.length; i++) {
			System.out.print(ch[i]);
		}
		*/
		
        // 3. 함수로 풀기
		// substring : 문자열을 시작과 종료 인덱스를 기준으로 자름
		// "문자열".substring(startIndex) : startIndex부터 끝까지의 문자열을 리턴
		// "문자열".substring(startIndex, endIndex) : startIndex(포함)부터 endIndex(불포함)까지의 문자열을 리턴
		
		System.out.print(my_string.substring(0,s) + overwrite_string);
		
		if (overwrite_string.length()+s <  my_string.length()) {
			System.out.println(my_string.substring(overwrite_string.length()+s));
		}
	}
}
