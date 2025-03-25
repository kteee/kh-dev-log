package kh;

public class Main01 {
	
	public static void main(String[] args) {
		
		System.out.println("Hello world");
	
		// 프로그램 실행 -> 메인메소드를 찾아가서 실행한다 
		// 메인메소드 : public stataic void main(~~~
		// 
		Student x = new Student();
		x.score=100;
		x.name="홍길동";
		
		System.out.println(x.score);
		System.out.println(x.name);
	}
}
