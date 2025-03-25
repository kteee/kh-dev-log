package main;

public class Main {

	public static void main(String[] args) {

		Pokemon x = new Pikachu();  // 다형성 : 포켓몬(부모) 타입의 피카츄(자식) 객체 생성
		
		x.bodyAttack();
		x.백만볼트();
		((Pikachu)x).m01(); 
		
		/*
		((Pikachu)x).백만볼트(); // 다운캐스팅 (부모타입의 객체를 자식타입의 객체로 변환)
		
		if( x instanceof Pikachu) {  // x 객체 타입이 피카츄인지 체크
			((Pikachu)x).백만볼트();
		}
		*/
		
	}

}
