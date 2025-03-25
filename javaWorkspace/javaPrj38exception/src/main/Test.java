package main;

public class Test {

	public void m01() {
		System.out.println("m01 start..");
		
		try {
			int x = 1/0;  // try 안의 내용을 실행하다가 예외가 발생하면 catch가 잡아서 실행한다
		} 
		catch(Exception e) {  // Exception 클래스
			System.out.println("예외 발생");
		}

		System.out.println("m01 end..");
	}
	
}
