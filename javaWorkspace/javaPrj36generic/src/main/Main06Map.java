package main;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Main06Map {

	public static void main(String[] args) {

		Map<String, Integer> m = new HashMap<String, Integer>();
		
		m.put("apple", 10);
		m.put("banana", 20);
		m.put("strawberry", 30);
		
		System.out.println(m.get("apple"));  // Map의 get()은 키를 전달하여 밸류를 검색
		
//		Map은 enhanced for문으로 키/밸류 출력 못함
//		for(String num : m) {
//			System.out.println(m);
//		} 
		
		// keyset()을 set에 담아준 후에 키로 밸류 출력
		System.out.println(m.keySet());
		
		Set<String> s = m.keySet();

		for(String x : s) {
			System.out.println(x);
			Integer value = m.get(x);
			System.out.println(value);
		}
		
	}

}
