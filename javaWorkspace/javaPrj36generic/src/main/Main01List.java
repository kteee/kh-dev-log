package main;

import java.util.ArrayList;
import java.util.List;

public class Main01List {

	public static void main(String[] args) {

		// 리스트 타입의 객체 생성
		// 리스트 클래스는 인터페이스임. 따라서 객체 생성 불가
		// -> 리스트 타입의 자식 타입으로 객체 생성 
		List<Integer> x = new ArrayList<Integer>();
		// List<Integer> x = new ArrayList<>(); 이렇게 쓰는 것이 일반적
		// 제네릭 : 타입 제한 (x 에는 < > 꺽새 안의 타입만 넣을 수 있다)
		
		
		// 리스트에 데이터 3개 넣기
		x.add(10);
//		x.add("안녕"); 
//		x.add('A'); 
		
		// 리스트의 모든 데이터 출력
		System.out.println(x.get(0));
		System.out.println(x.get(1));
		System.out.println(x.get(2));
		System.out.println(x);
		
		Object data = x.get(0);
		System.out.println(data);
	}
}
