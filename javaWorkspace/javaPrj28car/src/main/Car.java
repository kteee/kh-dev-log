package main;

public abstract class Car extends CarData implements CarAction {
	
	public void m01 () {
		System.out.println("~~~");
		// 추상 클래스 안에 일반 메서드 만들 수 있음
	}

}
