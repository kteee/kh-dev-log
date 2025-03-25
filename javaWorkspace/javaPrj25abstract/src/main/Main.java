package main;

public class Main {

	public static void main(String[] args) {
		
		// 객체를 변수에 담아줄 때는 상위 타입으로 담는 것이 좋음 (코드 유연성 때문에)
		Pokemon p = new Pikachu();
		p.bodyAttack();	
	}
}
