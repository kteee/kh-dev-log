package test;

public class Main {

	public static void main(String[] args) {

		WebProgrammer webProgrammer = new WebProgrammer(); 
		new WebProgrammer(); // new WP 입력 후 컨트롤+스페이스 하면 자동완성됨
		
		if (webProgrammer instanceof Person) { // webProgrammer 객체가 Person 타입이 맞다면
			System.out.println("Person 타입 맞음");
		}
		
		if (webProgrammer instanceof Programmer) { // webProgrammer 객체가 Programmer 타입이 맞다면
			System.out.println("Programmer 타입 맞음");
		}
		
		if (webProgrammer instanceof WebProgrammer) { // webProgrammer 객체가 webProgrammer 타입이 맞다면
			System.out.println("WebProgrammer 타입 맞음");
		}
	}
}
