package kh;

public class Person {
	
	// 생성자 
	// 접근제한자 메서드명(매개변수) { ~ }
	// 따로 생성자 메서드 작성하지 않으면 아래와 같은 생성자 메서드를 자바가 자동으로 생성해줌 (기본 생성자)
	// 그래서 생성자 메서드 없어도 생성자 만드는 것이 가능 
	public Person() {
		System.out.println("Person 생성자 호출됨");
		name = "홍길동";
		age = 20;
	}
	
	// 생성자 오버로딩
	public Person(String name, int age) {
		// 지역변수와 멤버변수의 이름이 같을 경우 this.를 써서 이 클래스의 멤버변수임을 구분  
		System.out.println("Person 생성자 호출됨2");
		this.name = name; 
		this.age = age;
	}
	
	// 객체 안에서의 멤버 변수 선언은 순서에 영향받지 않음
	private String name;  // 접근제한자는 아무것도 안쓰면 default가 적용되어 있음 
	private int age;	  // default : 같은 패키지까지 접근 허용
	
	// 앞으로의 객체 멤버 변수는 private로 선언하고 getter / setter 메서드를 이용하여 작업할 것임
	// getter 메서드
	public int getAge () {
		return this.age;  // private 변수의 값 리턴하기 (우회하여 값 가져오기)
	}
	
	// setter 메서드
	public void setAge (int age) {
		if(age>0) {
			this.age = age;  // age 변수에 들어갈 값을 제한할 수 있음
		}
	}
	
	public String getName () {
		return this.name;  
	}
	
	public void setName (String name) {
		if (name.length() >= 2) {
			this.name = name;
		}
	}
	
}
