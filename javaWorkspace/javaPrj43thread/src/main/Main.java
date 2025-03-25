package main;

public class Main {

	public static void main(String[] args) throws Exception {

		// 다중 쓰레드 환경 구성하기
		String tname = Thread.currentThread().getName();
		System.out.println("==== " + tname + " 쓰레드 일 시작! ====");  // 메인 쓰레드 일 시작
		
		// 쓰레드 재우기
		Thread.sleep(5000); // 1초
	
		KhThread01 kh01 = new KhThread01();
		kh01.start();
		new KhThread02().start();
		new KhThread03().start();
		
		
	}

}
