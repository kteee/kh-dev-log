package myPractice05;

public class Dog extends Animal implements Cry {
	
	@Override
	public void cry() {
		System.out.println("멍멍");
	}
	
}
