package com.kh.main;

public class Animal {

	// 기본 생성자 : 어떤 생성자도 없으면 자동으로 만들어짐
	public Animal() {
		
	}
	
	static String name; 
	// 앞에 static 붙으면 name 이라는 변수는 객체 안에 존재하지 않고 (힙 메모리에 저장되지 않고) static 메모리에 저장된다.
	// static이 붙으면 멤버변수라 하지 않고 static변수 (클래스변수, 전역변수) 라고 한다.
	// static 변수에 접근하려면 클래스명.이름 이라고 해야 접근할 수 있다. 
	
}
