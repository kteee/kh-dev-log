package main;

import java.util.ArrayList;
import java.util.List;

public class Main04List {

	public static void main(String[] args) {
		
		// 리스트 타입 객체 생성 (정수만 받는 리스트)
		List<Integer> x = new ArrayList<Integer>();

		// 데이터(정수) 3개 넣기
		x.add(10);
		x.add(20);
		x.add(30);
		
		// 데이터 하나씩 꺼내서 변수에 담고 출력
		for(int i=0; i<x.size(); i++) {
			int data = x.get(i);
			System.out.println(data);
		}
		
		// enhanced for
		for (int data : x) {
			System.out.println(data);
		}
	}
}
