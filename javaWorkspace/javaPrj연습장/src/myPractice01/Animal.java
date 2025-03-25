package myPractice01;

public class Animal {

	String name = "이름없음";
	
	// 위 코드는 아래와 같음
	/* 
	 * public Animal() {
	 * 		String = "이름없음";
	 * }
	 * 
	 */
	
	int age;

	public Animal() {

		this("유기견");
	}
	
	public Animal (String name) {
		
		this("바둑이",20);
		this.name = name;
	}
	
	public Animal (String name, int age) {
		
		this.name = name;
		this.age = age;
		
	}
	
	public void m01() {
		this.m02();
	}
	
	public void m02() {
		System.out.println("m02호출됨");
	}
	
}
