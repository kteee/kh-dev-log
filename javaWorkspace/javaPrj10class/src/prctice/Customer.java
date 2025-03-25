package prctice;

public class Customer {
	
	String name;
	int age;
	String adress;
	char grade;  // 등급 : S, A, B, C
	int orderNum=0;
	
	public void customerInfo() {
		System.out.println("고객명:"+ name + " 나이:" + age + " 주소:" + adress);
	}
	
	public void order() {
		orderNum++;
		System.out.println(name+" 고객님이 상품을 주문하였습니다. (총 주문횟수: "+ orderNum +")");
	}
	
	public void customerGrade() {
		if (orderNum >= 10) {
			grade = 'S';
		}
		else if (orderNum > 3) {
			grade = 'A';
		}
		else if (orderNum > 0) {
			grade = 'B';
		}
		else {
			grade= 'C';
		}
		
		System.out.println(name+" 님의 고객 등급은 "+ grade + " 입니다.");
		
		if(grade == 'S') {
			System.out.println("S등급 혜택 : 배송비 3번 무료 + 50% 할인 쿠폰 3장 지급");
		}
		else if(grade == 'A') {
			System.out.println("A등급 혜택 : 배송비 2번 무료 + 25% 할인 쿠폰 3장 지급");
		}
		else if(grade == 'B') {
			System.out.println("B등급 혜택 : 배송비 1번 무료 + 10% 할인 쿠폰 2장 지급");
		}
		else{
			System.out.println("C등급 혜택 : 10% 할인 쿠폰 1장 지급");
		}
	}
	
}
