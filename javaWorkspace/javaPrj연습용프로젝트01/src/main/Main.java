package main;

import Member.MemberController;

public class Main {

	public static void main(String[] args) {
		
		System.out.println("==== Member ====");
		
		MemberController controller = new MemberController();
		
		while(true) {
			controller.menu();
			if(controller.getNum().equals("9")) {
				break;
			}
		}
	}
}
