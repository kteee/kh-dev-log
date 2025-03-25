package kh;

public class Main {

	public static void main(String[] args) {
		
		Car c = new Car();
		c.name = "aaa";
		c.brand = "zzz";
		c.price = 1000;
		
		Sonata s = new Sonata();
		System.out.println(s.name); 
		// 부모와 자식 둘 다 같은 멤버를 가지고 있으면 자식에게 있는 멤버를 불러온다
		// 자식에게 없는 멤버는 부모에게서 불러온다
	
	}
}
