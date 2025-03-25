package test;

import java.util.Map;
import java.util.HashMap;

public class Test03Map {

	public static void main(String[] args) {
	
		// Map 타입 객체 만들기
		Map x = new HashMap();
		
		// 키 : 과일이름, 밸류 : 과일갯수
		x.put("복숭아",10);
		x.put("바나나",20);
		x.put("수박",5);
		
		// 특정 과일이 몇개 남았는지 확인해보기
		System.out.println(x.get("모과"));
		
	    // 특정 과일의 갯수를 777로 바꾸기
		x.put("바나나",777); // 같은 키 put으로 덮어쓰기 하면 됨 
	    
	    // 맵의 모든 요소 갯수 출력
		System.out.println(x.size());
	    
	    // "사과"라는 키가 존재하는지 확인하기
		System.out.println(x.containsKey("사과"));
		
	    // 맵의 모든 요소 출력
	    System.out.println(x);
	    
	    // 모든 요소 삭제
	    x.clear();
	    
	    // 맵이 비었는지 확인하기
	    System.out.println(x.isEmpty());
	    
	}
}
