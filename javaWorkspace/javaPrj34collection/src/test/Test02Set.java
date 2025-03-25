package test;

import java.util.HashSet;
import java.util.Set;

public class Test02Set {

	public static void main(String[] args) {
		
		// Set 타입의 객체 만들기
		Set x = new HashSet();
		
		// 1~10 사이의 숫자 5개 넣기 (중복 가능)
		x.add(1);
		x.add(5);
		x.add(5);
		x.add(7);
		x.add(10);
		
		// 요소가 총 몇개 들어가 있는지 출력
		System.out.println(x.size());
		
		// set 내용을 전체 출력
		System.out.println(x);
		
		// set 비우기
		x.clear();
		
		// set이 비어있는지 확인하기
		boolean result = x.isEmpty();
		System.out.println(result);
	}
}
