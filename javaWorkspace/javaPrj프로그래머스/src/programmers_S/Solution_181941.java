package programmers_S;

public class Solution_181941 {

	public static void main(String[] args) {
		
		// 181941_문자 리스트를 문자열로 변환하기
		
		String[] arr = new String [] {"a", "b", "c"};
		String answer = "";
		for(int i=0; i<arr.length; i++) {
			answer += arr[i];
		}
		System.out.println(answer);
	}
}
