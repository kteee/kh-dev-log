package programmers_U;

public class Solution002 {

	public static void main(String[] args) {
		
		// 1로 만들기
		int[] num_list = new int[] {12, 4, 15, 1, 14};
		int answer = 0;
		for(int i=0; i<num_list.length; i++) {
			int num = num_list[i];
			while(num>1) {
				if (num%2==0) {
					num = num/2;
					answer++;
				}
				else {
					num = (num-1)/2;
					answer++;
				}
			}
		}
		System.out.println(answer);
	}
}
