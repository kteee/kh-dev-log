package main;

import java.util.ArrayList;
import java.util.List;

public class ListMain {

	public static void main(String[] args) {

		//ArrayList x = new ArrayList();
		
		List x = new ArrayList(); 
		// 상위 클래스 타입으로 선언
		
		// 타입이 다른 여러 데이터를 배열의 형태로 관리할 수 있다
		// Object 타입이어서 -> Wrapper 클래스가 기본형 타입을 객체(참조형)으로 오토 박싱 해줌. 
		// (컴퓨터가 알아서 해줌,,)
		
		x.add(50); // 0번째 인덱스부터 데이터 값 넣음
		x.add("abc");
		x.add(true);
		x.add('a');
		x.add(3.14);
		
		System.out.println(x.get(0)); // 0번째 데이터 출력 
		System.out.println(x.get(1));
		System.out.println(x.get(2));
		System.out.println(x.get(3));
		System.out.println(x.get(4));
		// 배열과 다르게 데이터를 넣을 인덱스를 지정하지 않아도 마지막 공간에 알아서 데이터가 들어간다
		
		x.remove(2); // 특정 인텍스의 값 삭제함
		System.out.println(x.get(0)); 
		System.out.println(x.get(1));
		System.out.println(x.get(2));
		System.out.println(x.get(3));
		//삭제된 인덱스 이후의 값 왼쪽으로 한칸씩 자동 이동
		
		x.set(0, 777); // 0번째 인덱스의 값을 777로 변경 
		System.out.println(x.indexOf(50)); // 값 50이 들어가 있는 인덱스 반환
		x.clear();
	}
}
