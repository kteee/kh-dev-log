package kh;

public class Hello {

	/*
	 * 메서드
	 * : 명령어 묶음
	 * 
	 * [문법] 
	 * 접근제한자 리턴타입 메서드명(매개변수) { 실행내용 }
	 * 
	 * [메서드명 작성 시 주의사항]
	 * - 이름은 동사 형태로 작성 (동작/행위를 나타내는 이름으로)
	 * - 메서드명은 camelCase로 작성
	 * - 하나의 메서드는 하나의 동작만 가지는게 좋음
	 * - 메서드명은 의미있게 작성 (이름만 보고 내용을 파악할 수 있도록)
	 * 
	 */
	
	public void m01 () {
		System.out.println("m01 called...");
	}
	
	// 정수 10을 출력하는 메서드 (전달값X, 반환값X)
	public void printTen () {
		System.out.println(10);
	}
	
	// 전달받은 숫자를 출력하는 메서드 (전달값O, 반환값X)
	public void printNum (int num) {
		System.out.println(num);
	}
	
	// 숫자 3을 반환하는 메서드 (전달값X, 반환값O)
	// 이 메서드가 실행될 때 리턴 타입은 int
	// 이 메서드가 반환하는 값이 숫자 타입이라는 것을 써줘야 함
	public int getThree() {
		return 3;
	}
	
	// 전달받은 숫자에 +1 하여 리턴하는 메서드 (전달값O, 반환값O)
	public int getPlusOne (int x) {
		x += 1;
		return x;
	}
	
	/* 
	 * 매개변수는 여러개 설정 가능
	 * public void m01 (int a, String b, double c, boolean isOk, char ch) {
	 * 	... 
	 * }
	 * 
	 * 리턴타입과 리턴값의 타입은 같아야 함
	 * public Person m02 () {
	 * 	return Person;  // 객체 리턴
	 * }
	 * public int[] m3() { 
	 *  return int[3];  // 배열 리턴
	 *  }
	 */
}
