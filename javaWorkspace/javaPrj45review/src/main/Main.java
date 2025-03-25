package main;

import member.MemberController;
import member.MemberVo;

public class Main {
	
	public static MemberVo loginedMember;
	
	public static void main(String[] args) {

		System.out.println("===== java review =====");
		
		MemberVo mv;
		mv = new MemberVo("1", "user01", "1234", "nick01");
		
		System.out.println(mv.getNo());
		System.out.println(mv.getId());
		System.out.println(mv.getPwd());
		System.out.println(mv.getNick());
		
		// 객체를 그냥 출력하면 toString()을 자동으로 호출
		// toString 오버라이딩 안된 상태라면 해당 객체의 그냥 주소값 출력
		// toString 오버라이딩 된 상태라면 오버라이딩된 메서드 호출하여 출력
		System.out.println(mv);
		System.out.println(mv.toString());
		
		
		// 게시판 
		MemberController mc = new MemberController();
		while(true) {
			mc.menu();
		}
	}

}
