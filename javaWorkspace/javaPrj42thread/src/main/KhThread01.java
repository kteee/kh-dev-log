package main;

public class KhThread01 extends Thread { // Thread 상속받으면 Thread로 취급됨

	@Override  // 부모 클래스 run()을 오버라이드하여 우리가 만든 스레드에게 할일 부여
	public void run() {  

		System.out.println("kh01 할일 시작~");
		
	}
}
