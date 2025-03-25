package myPrj03;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Manager m = new Manager();
		
		while(true) {
			System.out.println("======= 가계부 프로그램 =======");
			m.printMyMoney();
			System.out.println("===========================");
			System.out.println("1. 나의 예산 설정");
			System.out.println("2. 분류 설정");
			System.out.println("3. 가계부 입력 (수입)");
			System.out.println("4. 가계부 입력 (지출)");
			System.out.println("5. 전체 수입/지출 내역");
			System.out.println("9. 프로그램 종료");
			System.out.print("메뉴 번호를 선택해주세요 : ");
			
			String num = sc.nextLine();
			System.out.println("");
			
			switch(num) {
			case "1" : m.setBudget(); break;
			case "2" : m.setCategory(); break;
			case "3" : m.income(); break;
			case "4" : m.outcome(); break;
			case "5" : m.printAllList(); break;
			case "9" : System.out.println("프로그램을 종료합니다."); return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.");
			System.out.println("");
			}
		}
	}

}
