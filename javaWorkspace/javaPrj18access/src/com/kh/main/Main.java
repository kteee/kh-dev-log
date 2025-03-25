package com.kh.main;

import test.Person;  // 다른 파일에서 가져오려면 import 해야함

public class Main {

	public static void main(String[] args) {

		System.out.println("=== 접근 제한자 ===");
		
		Animal x = new Animal();
		x.name = "바둑이";
		Animal.name = "바둑이";
				
		Person p = new Person();
		p.name = "홍길동";
	}

}
