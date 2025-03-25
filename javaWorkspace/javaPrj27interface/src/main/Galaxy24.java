package main;

public class Galaxy24 implements Camera, Mp3, Phone  {

	// Galaxy24 클래스는 Camera, Mp3, Phone의 모든 추상메서드를 구체화 해야한다
	
	@Override
	public void takePicture() {
		System.out.println("찰칵");
	}
	
	@Override
	public void call() {
		System.out.println("따르릉~");
	}
	
	@Override
	public void playMusic() {
		System.out.println("노래가 나옵니다 랄랄라");
	}
}
