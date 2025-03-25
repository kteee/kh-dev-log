package prctice;

public class Main {

	public static void main(String[] args) {
		
		Customer a = new Customer();
		Customer b = new Customer();
		Customer c = new Customer();
		Customer d = new Customer();
		
		a.name = "홍길동";
		a.age = 24;
		a.adress = "서울";
		
		b.name = "김철수";
		b.age = 32;
		b.adress = "인천";
		
		c.name = "김영희";
		c.age = 45;
		c.adress = "경기";
		
		d.name = "박둘리";
		d.age = 29;
		d.adress = "대구";
		
		a.customerInfo();
		b.customerInfo();
		c.customerInfo();
		d.customerInfo();
		System.out.println("");
		
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		a.order();
		b.order();
		c.order();
		c.order();
		c.order();
		c.order();
		c.order();
		System.out.println("");
		
		a.customerGrade();
		System.out.println("");
		b.customerGrade();
		System.out.println("");
		c.customerGrade();
		System.out.println("");
		d.customerGrade();
		System.out.println("");
		
	}
	
}
