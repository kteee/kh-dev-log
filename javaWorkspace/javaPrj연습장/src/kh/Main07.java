package kh;

public class Main07 {

	static String name; 
	
	public static void main(String[] args) {
		
		Main07.name="호호"; 
		name = "안녕"; // 같은 클래스 내에서는 클래스명 생략 가능
		
		m01(10, 20, 30, 40, 50);
		
		// static 메모리에 올라가는 애들은 프로그램 시작부터 끝까지 존재한다
		// 멤버메서드는 객체 생성 후에 불러올 수 있다
		// static은 static끼리만 참조가 가능하다
		// static 메인메서드가 힙영역의 멤버 메서드를 불러올 수 없음 (객체 생성이 되었는지 안되었는지 모름) 
		// 해결방법 : 불러올 메서드를 static로 변경한다
	}
	
	public static void m01 (int... x) {  // 가변변수 파라미터 (int가 여러개 올 것 이다..)
		System.out.println("m01 called..");
		System.out.println( x[0] );
		System.out.println( x[1] );
		System.out.println( x[2] );
		System.out.println( x[3] );
		System.out.println( x[4] );
	}

}
