package main;

import java.util.HashSet;
import java.util.Set;

public class Main05Set {

	public static void main(String[] args) {

		// Set 타입의 객체 생성 (정수만 받는 객체)
		Set<Integer> x = new HashSet<Integer>();
		
		// 데이터 3개 넣기
		x.add(10);
		x.add(20);
		x.add(30);
		
		// 모든 데이터 출력
		for (int num : x) {
			System.out.println(num);
		}
		
		// set은 하나씩 꺼내올 수 없다 (ArrayList의 get 같은 것이 없음)
	}

}
