package kh;

public class Main04 {

	public static void main(String[] args) {
		
		// Person 객체 만들기
		Person a = new Person();
		Person b = new Person();
		Person c = new Person();
		
		a.name = "홍길동";
		a.height = 170.8;
		a.weight = 75.5;
		a.bloodType = 'A';
		
		b.name = "김철수";
		b.height = 178.2;
		b.weight = 79.2;
		b.bloodType = 'B';
		
		c.name = "김영희";
		c.height = 162.0;
		c.weight = 55.1;
		c.bloodType = 'O';

		System.out.println(a.name + "/" + a.height + "/" + a.weight + "/" + a.bloodType);
		System.out.println(b.name + "/" + b.height + "/" + b.weight + "/" + b.bloodType);
		System.out.println(c.name + "/" + c.height + "/" + c.weight + "/" + c.bloodType);
	}
}
