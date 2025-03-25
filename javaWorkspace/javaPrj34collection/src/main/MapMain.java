package main;

import java.util.HashMap;
import java.util.Map;

public class MapMain {

	public static void main(String[] args) {

		// HashMap x = new HashMap();
		
		Map x = new HashMap();
		// 상위 클래스 타입으로 선언
		
		x.put("one", "apple"); // "one" 이라는 키와 "apple" 값
		x.put("two", "banana");
		x.put("three", "orange");
		
		System.out.println(x);
		
		System.out.println(x.get("one")); // "one" 키의 값을 꺼내옴
	}

}
