package kh;

public class Main {

	public static void main(String[] args) {
		
		// Animal 객체 만들기
		Animal dog = new Animal();
		
		dog.name = "강아지";
		dog.maxAge = 30;
		
		System.out.println(dog.name);
		System.out.println(dog.maxAge);
		
		dog.eat();
	}
}
