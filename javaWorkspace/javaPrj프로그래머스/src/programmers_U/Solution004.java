package programmers_U;

import java.util.Scanner;

public class Solution004 {

	public static void main(String[] args) {
		
		// 글자 지우기
		Scanner sc = new Scanner(System.in);
		String my_string = "apporoograpemmemprs";
		int[] indices = new int[] {1, 16, 6, 15, 0, 10, 11, 3};
		
		String answer = "";
		char[] arr = new char[my_string.length()]; 
		for(int i=0; i<arr.length; i++ ) {
			arr[i] = my_string.charAt(i);
		}
		for(int j=0; j<indices.length; j++) {
			arr[indices[j]] = '*';
		}
		for(int i=0; i<arr.length; i++) {
			if (arr[i] != '*') {
			answer = answer+arr[i];
			}
		}
		System.out.println(answer);
	}
}
