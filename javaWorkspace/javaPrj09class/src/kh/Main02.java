package kh;

public class Main02 {

	public static void main(String[] args) {
		
		// Animal 객체 만들기
		Animal a = new Animal();
		
		// 객체의 type, maxAge 값 채우기
		a.type = "dog";
		a.maxAge = 30;
		
		// 위와 같은 방식으로 객체 2개 더 만들기
		Animal b = new Animal();
		Animal c = new Animal();
		
		b.type = "cat";
		b.maxAge = 30;
		c.type = "hamster";
		c.maxAge = 3;
		
		// 객체 3개의 type, maxAge 출력해보기
		System.out.println("종류 : " + a.type);
		System.out.println("수명 : " + a.maxAge);
		System.out.println("종류 : " + b.type);
		System.out.println("수명 : " + b.maxAge);
		System.out.println("종류 : " + c.type);
		System.out.println("수명 : " + c.maxAge);
	}
}
