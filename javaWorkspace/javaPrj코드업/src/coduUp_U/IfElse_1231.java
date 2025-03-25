package coduUp_U;

import java.util.Scanner;

public class IfElse_1231 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1 = sc.nextInt();
		sc.nextLine();
		char ch = sc.nextLine().charAt(0);
		int num2 = sc.nextInt();
		sc.nextLine();
	
		int result1 = 0;
		double result2;
		switch (ch) {
		case '+' : 
			result1 = num1+num2;
			System.out.println(result1);
			break;
		case '-' : 
			result1 = num1-num2;
			System.out.println(result1);
			break;
		case '*' :
			result1 = num1*num2;
			System.out.println(result1);
			break;
		case '/' : 
			result2 = num1/num2;
			System.out.println(result2);
			break;
		}
		
		/*
		Scanner sc = new Scanner(System.in); 
		int a = sc.nextInt(); 
		sc.nextLine(); // 엔터키 없애기
		String b = sc.next();
		sc.nextLine(); // 엔터키 없애기
		int c = sc.nextInt();
		//일반적으로는 nextline으로 다 받아온다음에 숫자로 변환한다
		
		System.out.print(a);
		System.out.print(b);
		System.out.print(c);
		
		int result1=0;
		double result2;
		
		switch (b) {
		case "+" : result1 = a+c; System.out.print("="+result1);
				break;
		case "-" : result1 = a-c; System.out.print("="+result1);
				break;
		case "*" : result1 = a*c; System.out.print("="+result1);
				break;
		case "/" : result2 = (double)a/(double)c; System.out.print("="+result2);
				break;
		}
		*/
	}
}