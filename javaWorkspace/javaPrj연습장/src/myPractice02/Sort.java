package myPractice02;

import java.util.Arrays;

public class Sort {

	public static void main(String[] args) {
		
		// Sort (선택정렬, 버블정렬, Array클래스)
		
		/* 선택 정렬
		 * 1. 주어진 배열 중에 최소값을 찾는다.
		 * 2. 그 값을 맨 앞에 위치한 값과 교체한다.
		 * 3. 맨 처음 위치를 뺀 나머지 배열을 같은 방법으로 교체한다.
		 * 4. 하나의 원소만 남을 때까지 위의 1~3 과정을 반복한다.
	    */
		
		int[] selectionArr = new int[] {10000,20,36,47,40,6,10,7000};
		
		for (int i=0; i<selectionArr.length; i++) {
			int min = selectionArr[i];
			int idx = i;
			for (int j=idx; j<selectionArr.length; j++) {
				if (selectionArr[j] < min) {
					min = selectionArr[j];
					idx = j;
				}
			}
			int temp = 0;
			temp = selectionArr[i];
			selectionArr[i] = min;
			selectionArr[idx] = temp;
		}
		
		for (int i=0; i<selectionArr.length; i++) {
			System.out.println(selectionArr[i]);
		}
	
		
		
		
		/*
		int[] selectionArr = new int[] {10000,20,36,47,40,6,10,7000};
		int[] sortedArr = new int[selectionArr.length];
		
		for(int i=0; i<arr.length; i++) {
			int min = Integer.MAX_VALUE;
			int idx = -1; 
			for(int j=0; j<arr.length; j++) {
				if(min>arr[j]) {
					min = arr[j];
					idx=j;
				}
			}
			sortedArr[i]=min;
			arr[idx] = Integer.MAX_VALUE;
		}
		
		for(int i=0; i<arr.length; i++) {
			System.out.println(sortedArr[i]);
		}
		*/
		
		// 2. 버블 정렬 
		/*
		for(int i=0; i<arr.length-1; i++) {
			for(int j=0 ; j<arr.length-1; j++)
			{
				if(arr[j]>arr[j+1]) {
					int temp=arr[j];
					arr[j]=arr[j+1];
					arr[j+1]=temp;
				}
			}
		}
		
		for(int i=0; i<arr.length; i++) {
			System.out.println(arr[i]);
		}
		
		//3. 자바 Array 클래스를 이용하여 정렬
		Arrays.sort(arr);
		*/
	}
}
