package chapter7_array;

public class ArrayTest02 {
	public static void main(String[] args) {
	
		int[] array1 = new int[3];  
		double[] array2 = new double[3];
		
		//배열 초기화 없이 선언만 한 경우 정수는 0, 실수는 0.0, 객체 배열은 null로 초기화 됨
		for(int i=0; i<array1.length; i++) {
			System.out.println(array1[i]);  
		}
		for(int i=0; i<array2.length; i++) {
			System.out.println(array2[i]);  
		}
		
		//배열의 유효한 요소 값만 출력하기
		int[] array = new int[5];
		int size=0;  // 유효한 배열 요소의 개수를 저장할 변수
		
		array[0] = 1; size++;  
		array[1] = 2; size++; 
		array[2] = 3; size++; 
		
		for(int i=0; i<size; i++) {
			System.out.println(array[i]);  
		}
	}
}
