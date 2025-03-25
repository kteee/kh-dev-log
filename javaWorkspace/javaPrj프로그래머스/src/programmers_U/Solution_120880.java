package programmers_U;

import java.lang.reflect.Array;

public class Solution_120880 {

	public static void main(String[] args) {
		
		// 120880_특이한 정렬

		int[] numlist = new int[] {10000,20,36,47,40,6,10,7000};
		int n=30;

		int[] answer = new int[numlist.length];
		
		for(int i=0; i<answer.length; i++) {
			answer[i] = numlist[i]-n;
		}
		
		for(int i=0; i<answer.length-1; i++) {
			for(int j=0 ; j<answer.length-1; j++)
			{
				if (answer[j] < 0 && answer[j+1] < 0) {
					if (-(answer[j]) > -(answer[j+1])) {
						int temp=answer[j];
						answer[j] = answer[j+1];
						answer[j+1] = temp;
					}
				}
				else if (answer[j] < 0 && answer[j+1] >= 0) {
					if (-(answer[j]) > answer[j+1]) {
						int temp=answer[j];
						answer[j] = answer[j+1];
						answer[j+1] = temp;
					}
				}
				else if (answer[j] >= 0 && answer[j+1] < 0) {
					if (answer[j] > -(answer[j+1])) {
						int temp=answer[j];
						answer[j] = answer[j+1];
						answer[j+1] = temp;
					}
				}
				else {
					if (answer[j] > answer[j+1]) {
						int temp=answer[j];
						answer[j] = answer[j+1];
						answer[j+1] = temp;
					}
				}
			}
		}
		
		for(int i=0; i<answer.length; i++) {
			System.out.println(answer[i]);
		}
		
		for (int j=0; j<answer.length-1; j++) {
			if (-(answer[j]) == answer[j+1] && answer[j] < answer[j+1]) {
				int temp = answer[j];
				answer[j] = answer[j+1];
				answer[j+1] = temp;
			}
		}
		
		System.out.println("");
		for (int x=0; x<answer.length; x++){
			answer[x] += n;
			System.out.println(answer[x]);
		}
		
		//정렬하기
		/*
		int diff = -1;
		int target = -1;
		int targetIdx = -1;
		
		for(int i=0; i<arr.length; i++) {
			int diffTemp = Math.abs(n-arr[i]);
			if(diff > diffTemp) {
				target = arr[i];
				targetIdx = i;
			}
		}
		*/
	}
}
