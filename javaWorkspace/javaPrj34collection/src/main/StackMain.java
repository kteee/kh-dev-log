package main;

import java.util.Stack;

public class StackMain {

	public static void main(String[] args) {
	
		Stack x = new Stack();
		x.add(10);
		x.add(20);
		x.add(30);
		
		System.out.println(x);
		System.out.println(x.pop()); // 제일 위쪽에 있는 데이터 꺼냄 (꺼내온 다음에 사라짐)
		System.out.println(x.pop()); 
		System.out.println(x.pop());
		
		System.out.println(x); // 30, 20, 10 다 꺼내서 이 스택에는 아무것도 없음
	}

}
