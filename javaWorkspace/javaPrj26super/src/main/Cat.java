package main;

public class Cat extends Animal {
	String name = "Cat";

	// 자식 클래스의 메서드
	public void printName() {
		System.out.println("부모 클래스의 이름: " + super.name); // super로 부모 클래스의 name 참조
		System.out.println("자식 클래스의 이름: " + this.name); // this로 자식 클래스의 name 참조
	}

	// 부모 클래스의 메서드를 재정의하면서 super로 부모의 메서드 호출
	@Override
	public void sound() {
		super.sound(); // 부모 클래스의 sound() 메서드 호출
		System.out.println("고양이의 소리: 야옹");
	}
}
