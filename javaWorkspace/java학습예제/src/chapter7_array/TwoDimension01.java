package chapter7_array;

public class TwoDimension01 {
	
	public static void main(String[] args) {
	
		//2차원 배열 선언
		int[][] array = new int[2][3];  //2행 3열인 2차원 배열 선언
		
		//2차원 배열 선언과 초기화
		int[][] arr = {{1,2,3},{4,5,6}};
		
		//2차원 배열 길이 출력하기
		System.out.println(arr.length);  // arr 배열 행 개수
		System.out.println(arr[0].length);  // arr 배열 1행의 열 개수
		System.out.println(arr[1].length);  // arr 배열 2행의 열 개수
		
		//2차원 배열 모든 요소 출력하기
		for(int i=0; i<arr.length; i++) {	// 전체 배열 길이인 arr.length는 행의 개수를 나타냄
			for (int j=0; j<arr[i].length; j++) {  // 각 행의 길이 arr[i].length는 열의 개수를 나타냄
				System.out.println(arr[i][j]);
			}
		}
	}
}
