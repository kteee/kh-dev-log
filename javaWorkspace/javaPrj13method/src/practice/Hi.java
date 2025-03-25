package practice;

import java.util.Scanner;

public class Hi {
	
	// 시험 과목을 출력하는 메서드 (전달값X, 반환값X)
	public void printTestSubject() {
		System.out.println("시험과목 : 국어, 영어, 수학");
	}
	
	// 시험 점수를 출력하는 메서드 (전달값O, 반환값X)
	public void printTestScore(int a, int b, int c) {
		System.out.println("나의시험점수 : " + a + " / "+ b + " / " + c);
	}
	
	// 시험 합격 점수를 반환하는 메서드 (전달값X, 반환값O)
	public int printPassScore() {
		return 80;
	}
	
	// 성적 평균을 구하는 메서드 (전달값O, 반환값O)
	public double getAverage(int a, int b, int c) {
		double avg = (a+b+c)/3;
		return avg;
	}
	
	// 성적 평균에 따라 PASS 또는 FAIL을 출력하는 메서드 (전달값O, 반환값O)
	public char getPassFail(double a) {
		if (a >= 80) { 
			return 'P'; 
		} else {
			return 'F';
		}
	}
}
