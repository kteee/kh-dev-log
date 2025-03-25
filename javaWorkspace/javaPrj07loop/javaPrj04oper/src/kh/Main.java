package kh;

public class Main {

	public static void main(String[] args) {

		System.out.println("===연산자===");
		
		/*
		 * <연산자> 
		 *  [산술연산자] : 숫자 * 숫자를 연산, 실행결과 ⇒ 숫자
		 *  +, -, *, /, %
		 *  
		 *  [비교연산자] : 숫자 * 숫자를 연산, 실행결과 ⇒ 논리 (true/false)
		 *  <, <=, >, >=, ==, !=
		 *  
		 *  [논리연산자] : 논리 * 논리를 연산, 실행결과 ⇒ 논리
		 *  && (and), || (or), ! (not)
		 */
		
		//int x = 10*20;
		//System.out.println(x);
		
		boolean a = 10<20;
		boolean b = 10<=20;
		boolean c = 10>20;
		boolean d = 10>=20;
		boolean e = 10==20;
		boolean f = 10!=20;
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		System.out.println(e);
		System.out.println(f);
		
		System.out.println("===논리연산자===");
		boolean g = true && true;
		System.out.println(g);
		boolean h = false && true;
		System.out.println(h);
		
		boolean aa = false || true;
		System.out.println(aa);
		
		boolean bb = true || false;
		System.out.println(bb);
		
		boolean cc = !true;
		System.out.println(cc);
		
		System.out.println("===증감연산자===");
		int x= 10;
		x--;	// 후위연산자 : 나중에 실행
		++x;	// 전위연산자 : 먼저 실행
		System.out.println(x++);
		
		System.out.println("===복합연산자===");
		int y = 10;
		// y = y + 3;
		y /= 3; // 위와 같은 연산
		System.out.println(y);
	}

}
