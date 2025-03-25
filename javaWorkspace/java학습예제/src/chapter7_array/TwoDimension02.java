package chapter7_array;

public class TwoDimension02 {

	public static void main(String[] args) {
		
		//알파벳 소문자를 2글자씩 13줄로 출력하는 프로그램을 이차원 배열로 구현하기
		char[][] alphabets = new char[13][2];
		char ch = 'a';
		
		for(int i=0; i<13; i++) {
			for(int j=0; j<2; j++) {
				alphabets[i][j] = ch;
				ch++;
			}
		}
		
		for(int i=0; i<13; i++) {
			for(int j=0; j<2; j++) {
				System.out.print(alphabets[i][j]);
			}
			System.out.println("");
		}
	}
}
