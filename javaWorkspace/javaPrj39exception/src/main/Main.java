package main;

import java.io.IOException;

public class Main {

	public static void main(String[] args) {

		System.out.println("==== exception ====");
		
		Test test = new Test();
		
		// 예외 커스터마이징
		try {
			//int x = 1/0;
			test.m01();
		} 
		catch (NullPointerException e) {
			System.out.println("예외 발생");
		}
		finally {
			System.out.println("여기는 무조건 실행");
		}
	}
}
