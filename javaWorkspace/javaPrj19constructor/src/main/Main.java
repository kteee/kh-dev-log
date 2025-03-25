package main;

import kh.Person; // 다른 패키지의 클래스를 참조하려면 import 필요 
				  // (같은 패키지 내 클래스 참조는 import 필요없음)
import kh.User;

public class Main {

	public static void main(String[] args) {

		System.out.println("==== 생성자 ====");
		
		Person y = new Person();
		System.out.println(y.getName());
		System.out.println(y.getAge()); // private 변수의 값 우회하여 가져오기
		
		Person x = new Person("김철수", 40);
		System.out.println(x.getName());
		System.out.println(x.getAge()); 
		
		System.out.println("1년 후 .."); 
		x.setName("김찰스");
		x.setAge(41);
		System.out.println(x.getName());
		System.out.println(x.getAge());
		
		
		System.out.println("====================");

		/*
		User user = new User();
		user.setId("user01");
		user.setPwd("1234");
		user.setNick("aabbcc");
		user.setAge(40);
		user.setHeight(181.5);
		user.setWeight(75.6);
		user.IsQuit(false);
		*/
		
		User user2 = new User("user01", "1234", "aabbcc", 24, 181.5, 85.5, false);
		
		System.out.println(user2); // user.toString() 안써도 바로 toString의 메서드 실행결과가 나옴	
		
		}
}
