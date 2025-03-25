package kh;

public class Main04 {

	public static void main(String[] args) {
		
		// 랜덤값 생성하기
		// Math.random(); 
		// 0이상 1미만의 랜덤한 숫자를 생성함 (double 타입)
		// 연산과 형변환을 통해 랜덤 범위 설정 가능
		
		// 1부터 50까지의 랜덤한 숫자 생성하기
		// 0 <= x < 1  ->  0 *50+1, 1 *50+1 을 하여 아래와 같은 범위 지정 가능
		// 1 <= x < 51  
		int x = (int) (Math.random() * 50 + 1);
		System.out.println(x);
	}
}
