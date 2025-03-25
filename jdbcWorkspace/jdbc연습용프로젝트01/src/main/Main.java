package main;

import member.MemberController;

public class Main {
	
	
	public static void main(String[] args) throws Exception {

		MemberController mc = new MemberController();
		
		while (true) {
			boolean isEnd = mc.menu();
			if (isEnd == true)
				break;
		}
	}

}
