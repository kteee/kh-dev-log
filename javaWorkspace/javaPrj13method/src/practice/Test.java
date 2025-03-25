package practice;

import java.util.Scanner;

public class Test {

	public static void main(String[] args) {
		
		Hi hi = new Hi();
		hi.printTestSubject();
		System.out.println("시험합격점수 : " + hi.printPassScore());
		
		Scanner sc = new Scanner(System.in);
		System.out.print("국어 점수를 입력해주세요: ");
		int a = sc.nextInt();
		System.out.print("영어 점수를 입력해주세요: ");
		int b = sc.nextInt();
		System.out.print("수학 점수를 입력해주세요: ");
		int c = sc.nextInt();
		
		hi.printTestScore(a,b,c);
		
		double avgScore = hi.getAverage(a, b, c);
		System.out.println("평균점수 : " + avgScore);
		System.out.println("시험결과 : " + hi.getPassFail(avgScore));
	}
} 
