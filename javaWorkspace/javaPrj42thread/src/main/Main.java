package main;

public class Main {

	public static void main(String[] args) {

		System.out.println("==== thread ====");
		
		// <나만의 쓰레드 만들기>
		// 1. 쓰레드를 상속받아 구현
		// 2. Runnable 인터페이스를 받아 구현
		// 3. 익명클래스 사용
		// 4. 람다식 사용
		
		/*
		System.out.println(Thread.currentThread().getName());
		
		// 1. 쓰레드 상속받아 구현
		KhThread01 kh01 = new KhThread01();
		kh01.start(); // start() 메서드 내부에 run() 메서드 호출
		
		// 2. Runnable 인터페이스를 받아 구현
		KhThread02 kh02 = new KhThread02();
		new Thread( kh02 ).start(); // 새로운 스레드 생성할 때 할일을 넣어서 생성시킬 수 있음

		// 3. 익명 클래스 사용
		Runnable obj = new Runnable() {
			public void run() {
				System.out.println("인터페이스로 객체 바로 만들어봄~");
			}
		};
		
		new Thread(obj).start();
	
		
		// 4. 람다식 사용 (위랑 같은 의미임)
		// () -> 
		new Thread ( () -> { 
			System.out.println("할일~~");
		} ).start();
		*/
		
		// 1. Thread 상속받아 구현하기
		// Thread 클래스 안에는 start() 메서드가 있음
		// start() 메서드를 호출하면, JVM은 새로운 쓰레드를 생성하고, 해당 쓰레드에서 run() 메서드를 실행함
		// -> 내 쓰레드 클래스에 Thread 클래스 상속
		// -> run()을 오버라이드한 후 메인에서 start() 하여 내 클래스 run()을 실행시키기
		
		TestThread01 t01 = new TestThread01();
		t01.start();
		
		// 2. Runnable 인터페이스를 받아 구현
		// Thread 클래스는 Runnable 클래스가 implement 되어 있음
		// Runnable 클래스에는 run()이 있고 Thread 클래스는 이 run()을 오버라이드 한 상태
		// -> 내 쓰레드 클래스에 Runnable 클래스를 implement 함
		// -> 
		
		Runnable t02 = new TestThread02();
		t02.start();
		
	}
}
