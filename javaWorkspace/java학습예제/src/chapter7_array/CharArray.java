package chapter7_array;

public class CharArray {

	public static void main(String[] args) {
		
		//문자 자료형 배열
		char[] alphabets = new char[26];
		
		//문자 배열에 A부터 Z까지 넣고 출력하기
		char ch = 'A';
		
		for(int i=0; i<alphabets.length; i++) { 
			alphabets[i] = ch;  // 맨 처음에 alphabets[0] 위치에 'A'(65)가 들어감
			ch++;  // 그 다음 ch를 1증가 시켜서 'B'(66)로 만듦
		}
		
		for(int i=0; i<alphabets.length; i++) { 
			System.out.println(alphabets[i]);
		}
		
		// 위의 과정을 자바 클래스에서 String으로 제공함
	}
}
