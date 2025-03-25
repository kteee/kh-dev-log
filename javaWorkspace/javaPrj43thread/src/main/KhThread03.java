package main;

public class KhThread03 extends Thread {

	@Override
	public void run() {
		String tname = Thread.currentThread().getName();
		System.out.println(tname + " 쓰레드 일 시작!");
		
		// 순서 필요한 상황에서는 멀티쓰레드 사용할 때 주의 필요..
		for(int i=1; i<=10; i++) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {}
			System.out.println(tname + ":" + i);
		}
	}
	
}
