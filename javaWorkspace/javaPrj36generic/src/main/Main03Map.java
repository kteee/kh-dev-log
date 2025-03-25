package main;

import java.util.HashMap;
import java.util.Map;

public class Main03Map {

	public static void main(String[] args) {

		// Map 타입의 객체 생성
		// 상위 타입으로 선언하면 유연한 코드를 만들 수 있음
		Map<String, Integer> x = new HashMap<String, Integer> ();
		
		// 데이터 3쌍 집어넣기
		x.put("바나나", 20);
		x.put("사과", 10);
//		x.put("복숭아", "20"); 에러
		
		// 모든 데이터 확인
		System.out.println(x);
		
	}
}
