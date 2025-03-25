package kh;

import java.util.Scanner;

public class Calc {

	// 멤버변수를 만들어 놓으면 이 멤버 변수에 모든 매서드들이 접근할 수 있다
	// 멤버변수 사용하지 않고 각 메서드마다 지역변수만 선언해놓으면 각 매서드 안의 지역변수 값을 공유하지 못함
	int num1;
	String oper;
	int num2;
	int result;
	
	// 3개의 메서드 한번에 실행하는 메서드
	public void startCalc() {
		// 메서드 안에서 메서드 호출 가능
		// this.calcDate(); 라고 써도됨 
		// 현재객체.calcDate(); (근데 같은 객체 안에서는 보통은 생략함)
		scanData();
		calcData(); 
		printResult();
	}
	
	// 정수, 문자열, 정수 입력받기
	public void scanData () {
		Scanner sc = new Scanner(System.in);
		num1 = sc.nextInt();  // 10개행 입력되면 10만 가져가서 개행이 남아버림.. 그래서 오류남
		sc.nextLine(); // 엔터키 처리
		oper = sc.nextLine(); // 라인 한번에 다 잡아먹어서 못가져가는 개행 없음
		num2 = sc.nextInt(); 
		sc.nextLine(); 
	}
	
	// 계산하기
	public void calcData () {
		result = 0;  
		// 멤버변수로 선언된 변수는 초기화안해도 기본값으로 초기화됨 (0)
		// 지역변수로 result 선언할 시 초기화안하고 선언만 하면 오류남 (default의 경우 result에 아무 값도 안들어가기 때문)
		// -> 모든 케이스에 할당값을 넣어줘야 or 처음부터 초기화해야 오류 안남
		switch(oper) {
		case "+" : result = num1 + num2; break;
		case "-" : result = num1 - num2; break;
		case "*" : result = num1 * num2; break;
		case "/" : result = num1 / num2; break;
		case "%" : result = num1 % num2; break;
		default : System.out.println("잘못된 연산자 입니다.");  
		}
	}
	
	// 결과 출력하기
	public void printResult () {
		System.out.println(num1 + oper + num2 +"=" + result);
	}
}
