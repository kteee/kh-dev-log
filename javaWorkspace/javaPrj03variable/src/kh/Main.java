package kh;

public class Main {

	public static void main(String[] args) {
		
		System.out.println("안녕하세요");
		
		/* 
		 * <변수> : 값을 저장하기 위한 공간
		 * - 선언 : 변수를 만드는 것
		 * - 할당 : 변수에 값을 넣는 것
		 * - 초기화 : 첫번째 할당 (선언+할당)
		 * - 변수 타입 : 변수에 담기는 값 제한
		 * 
		 * [주의사항]
		 * 변수 선언 시 이름 중복 불가
		 * 특수문자는 _ , $ 만 가능
		 * 의미를 파악하기 쉬운 이름으로 작성
		 * 숫자로 시작하면 안됨
		 * camelCase 규칙에 맞게 작성
		 * 
		 * [변수타입]
		 * - 정수 : byte, short, int, long
		 * - 실수 : float, double
		 * - 문자 : char
		 * - 문자열 : String
		 * - 논리값 : boolean
		 * 
		 */
		
	
//		int x;
//		x = 10;
//		int x = 10;
		
		byte a = 120;
		char b = 'A';
		float c = (float)3.14;	// 강제로 형 변환
		System.out.println(a);
		System.out.println(b);
		byte d = (byte)130; 
		System.out.println(d);
		
		char ch = 'A';
		
	}

}
