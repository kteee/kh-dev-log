package kh;

public class Main03 {

	public static void main(String[] args) {
		
		// User 객체 만들기
		User a = new User();
		User b = new User(); 
		User c = new User();
		
		a.id = "user1";
		a.pwd = "aaaabbbb";
		a.nick = "iamhong";
		
		b.id = "user2";
		b.pwd = "bbbbcccc";
		b.nick = "americano";
		
		c.id = "user3";
		c.pwd = "ccccdddd";
		b.nick = "javazoa";
		
		System.out.println("아이디 : " + a.id);
		System.out.println("비밀번호 : " + a.pwd);
		System.out.println("닉네임 : " + a.nick);
		System.out.println("아이디 : " + b.id);
		System.out.println("비밀번호 : " + b.pwd);
		System.out.println("닉네임 : " + b.nick);
		System.out.println("아이디 : " + b.id);
		System.out.println("비밀번호 : " + b.pwd);
		System.out.println("닉네임 : " + b.nick);
	}
}
