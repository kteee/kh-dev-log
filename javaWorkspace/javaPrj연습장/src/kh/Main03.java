package kh;

import java.util.Scanner;

public class Main03 {

	public static void main(String[] args) {
	
		// 문자열 비교하기
		String str1 = "안녕";
		
		Scanner sc = new Scanner(System.in);
		String str2 = sc.next();
		
		// 문자열은 등호로 비교할 수 없음 (String은 변수에 값이 아닌 주소를 저장하기 때문에)
		System.out.println(str1 == str2);  // false 
		
		// str1.equals(str2) 로 써줘야 비교 가능
		System.out.println(str1.equals(str2));  // true 
	}

}
