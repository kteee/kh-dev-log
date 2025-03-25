package main;

import java.io.IOException;

import member.MemberController;

public class Main {

	public static void main(String[] args) throws Exception {

		MemberController mc = new MemberController();
		while(true) {
			mc.menu();
		}

	}

}
