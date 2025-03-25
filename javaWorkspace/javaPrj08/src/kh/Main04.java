package kh;

public class Main04 {

	public static void main(String[] args) {

		// double 배열
		double[] darr = new double[3];
		darr[0] = 1.11;
		darr[1] = 2.22;
		darr[2] = 3.33;

		for(int i=0; i<darr.length; i++) {
			System.out.println(darr[i]);
		}
		
		// char 배열
		char[] carr = new char[3];
		carr[0] = 'A';
		carr[1] = 'B';
		carr[2] = 'C';
		
		for(int i=0; i<carr.length; i++) {
			System.out.println(carr[i]);
		}
		
		// boolean 배열
		boolean[] barr = new boolean[3];
		barr[0] = true;
		barr[1] = false;
		barr[2] = true;
		
		for(int i=0; i<barr.length; i++) {
			System.out.println(barr[i]);
		}
		
		// String 배열
		String[] sarr = new String[3];
		sarr[0] = "안녕하세요";
		sarr[1] = "제 이름은";
		sarr[2] = "홍길동입니다";
		
		for(int i=0; i<sarr.length; i++) {
			System.out.println(sarr[i]);
		}
	}
}
