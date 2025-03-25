package chapter7_array;

public class ArrayTest01 {

	public static void main(String[] args) {
		
		//배열 선언
		int[] array1 = new int[3];  
		int array2[] = new int[3];
		
		//배열 선언 및 초기화
		int[] array3 = new int[] {0, 1, 2};  
		int[] array4 = {0, 1, 2};
		
		//타입 먼저 선언하고 그 다음에 배열 생성하는 것도 가능
		int[] array5;
		array5 = new int[3];  
		int[] array6;
		array6 = new int[] {0, 1, 2}; 
		/* 대신 이거는 안됨
		 * int [] array;
		 * array = {0, 1, 2}
		 */
		
		//배열 요소에 값 넣기
		array1[0] = 1; 
		array1[1] = 2;
		array1[2] = 3; 
		
		//배열의 길이 출력
		System.out.println(array1.length); 
		
		//배열의 모든 요소 값 출력하기
		for(int i=0; i<array1.length; i++) {
			System.out.println(array1[i]);  
			
		}
	}
}
