package main;

import java.util.Set;
import java.util.HashSet;

public class Main02Set {
	
	public static void main(String[] args) {
		
		// Set 타입의 객체 생성
		Set x = new HashSet();
		
		// 데이터 3개 집어넣기 (중복된 데이터 넣어보기) 
		x.add(10);
		x.add(10);
		x.add("사과");
		x.add(30);
		
		// 모든 데이터 출력
		System.out.println(x);
	}
	
}
