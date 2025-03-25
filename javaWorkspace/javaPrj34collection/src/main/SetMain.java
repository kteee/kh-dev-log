package main;

import java.util.HashSet;
import java.util.Set;

public class SetMain {

	public static void main(String[] args) {

		// HashSet x = new HashSet();
		
		Set x = new HashSet();
		// 상위 클래스 타입으로 선언
		
		x.add(10);
		x.add(20);
		x.add(30);
		x.add(30);
		x.add(30);
		
		System.out.println(x);  
		// HashSet 클래스는 toString을 오버라이드 하고 있어서 객체 x만 써도 어떤 데이터가 들어가 있는지 확인할 수 있음
		
		System.out.println(x.size());
		
	}
}
