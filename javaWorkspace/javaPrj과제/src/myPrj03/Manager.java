package myPrj03;

import java.util.Scanner;

public class Manager {
	
	private Scanner sc = new Scanner(System.in);
	private Budget b = new Budget();
	
	private int no;
	private String divide;
	private int date;
	private String category;
	private int money;
	
	private int income;
	private int expense;
	
	private Manager[] allListArr = new Manager[100];
	private int idx = 0;
	private String[] incomeCategoryArr = new String[100];
	private int idxIncomeCateArr = 0;
	private String[] expenseCategoryArr = new String[100];
	private int idxExpenseCateArr = 0;
	
	public Scanner getSc() {
		return sc;
	}

	public void setSc(Scanner sc) {
		this.sc = sc;
	}

	public Budget getB() {
		return b;
	}

	public void setB(Budget b) {
		this.b = b;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDivide() {
		return divide;
	}

	public void setDivide(String divide) {
		this.divide = divide;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public int getOutcome() {
		return expense;
	}

	public void setOutcome(int outcome) {
		this.expense = outcome;
	}

	public Manager[] getmArr() {
		return allListArr;
	}

	public void setmArr(Manager[] mArr) {
		this.allListArr = mArr;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void printMyMoney() {
		System.out.println("나의 예산 : " + b.getBudget());
		System.out.println("수입 금액 : " + income);
		System.out.println("지출 금액 : " + expense);
		System.out.println("잔액 : " + (b.getBudget()+income-expense));
	}
	
	public void setBudget() {
		System.out.println("------- 나의 예산 설정 -------");
		System.out.print("나의 예산 입력 : ");
		int mybudget = sc.nextInt();
		b.setBudget(mybudget);
		System.out.println("");
	}
	
	public void income () {
		divide = "수입";
		System.out.println("----- 가계부 입력(수입) -----");
		System.out.print("날짜(YYMMDD) : ");
		date = sc.nextInt();
		sc.nextLine();
		
		System.out.print("분류(|");
		for (int i=0; i<idxIncomeCateArr; i++) {
			if (incomeCategoryArr[i] != null) {
				System.out.print(incomeCategoryArr[i]+ "|");
			}
		}
		System.out.print(") : ");
		category = sc.nextLine();
		
		System.out.print("금액 : ");
		money = sc.nextInt();
		sc.nextLine();
		System.out.println("");
		income += money;
		
		Manager manager = new Manager();
		
		manager.no = idx+1;
		manager.divide = divide;
		manager.date = date;
		manager.category = category;
		manager.money = money;

		allListArr[idx] = manager;
		idx++;
	}
	
	public void outcome() {
		divide = "지출";
		System.out.println("----- 가계부 입력(지출) -----");
		System.out.print("날짜(YYMMDD) : ");
		date = sc.nextInt();
		sc.nextLine();
		System.out.print("분류(|");
		for (int i=0; i<idxExpenseCateArr; i++) {
			if (expenseCategoryArr[i] != null) {
				System.out.print(expenseCategoryArr[i]+ "|");
			}
		}
		System.out.print(") : ");
		category = sc.nextLine();
		System.out.print("금액 : ");
		money = sc.nextInt();
		sc.nextLine();
		System.out.println("");
		expense += money;
		
		Manager manager = new Manager();
		manager.no = idx+1;
		manager.divide = divide;
		manager.date = date;
		manager.category = category;
		manager.money = money;
		
		allListArr[idx] = manager;
		idx++;
	}
	
	public void printAllList() {
		while(true) {
			System.out.println("---------- 전체 내역 조회 -----------");
			System.out.println("NO / 날짜 / 구분 / 카테고리 / 금액");
			for(int i=0; i<idx; i++) {
				if(allListArr[i].divide != null)
				System.out.println(allListArr[i].no + " | " + allListArr[i].date + " | " + allListArr[i].divide + " | " + allListArr[i].category + " | " + allListArr[i].money);
			}
			System.out.println("---------------------------------");
			System.out.println("1. 내역 삭제하기");
			System.out.println("0. 이전 메뉴로 돌아가기");
			System.out.print("메뉴 번호 선택 : ");
			String str = sc.nextLine();
			System.out.println("");
			
			switch(str) {
			case "1" : deleteList(); break;
			case "0" : return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.\n");
			}
		}
	}
	
	public void deleteList() {
		while(true) {
			System.out.print("삭제할 번호 선택 : ");
			int num = sc.nextInt();
			sc.nextLine();
			if((num<1 || num>idx) || allListArr[num-1].divide==null ) {
				System.out.println("잘못 입력하였습니다. 다시 확인해주세요.");
			}
			else if(allListArr[num-1].no == num) {
				if(allListArr[num-1].divide == "수입" ) {
					allListArr[num-1].divide = null;
					income = income - allListArr[num-1].money;
				}
				else {
					allListArr[num-1].divide = null;
					expense = expense - allListArr[num-1].money;
				}
				System.out.println("삭제 되었습니다.");
			}
			else {
				System.out.println("잘못 입력하였습니다. 다시 확인해주세요.");
			}
			System.out.println("");
			return;
		}
	}
	
	public void setCategory () {
		while(true) {
			System.out.println("------ 분류 설정 ------");
			System.out.println("1. 수입 분류 설정");
			System.out.println("2. 지출 분류 설정");
			System.out.println("0. 이전 메뉴로 돌아가기");
			System.out.print("메뉴 번호 선택 : ");
			String str = sc.nextLine();
			System.out.println("");
			switch(str) {
			case "1" : printIncomeCategory(); break;
			case "2" : printExpenseCategory(); break;
			case "0" : return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.\n");
			}
		}
	}
	
	public void printIncomeCategory () {
		while(true) {
			int count = 1;
			System.out.println("------ 수입 분류 설정 ------");
			System.out.println("NO / 분류명");
			for(int i=0; i<idxIncomeCateArr; i++) {
				if (incomeCategoryArr[i] != null) {
					System.out.println(count + " / " + incomeCategoryArr[i]);
					count++;
				}
			}
			System.out.println("-------------------------");
			System.out.println("1. 분류 추가하기");
			System.out.println("2. 분류 삭제하기");
			System.out.println("0. 이전 메뉴로 돌아가기");
			System.out.print("메뉴 번호 선택 : ");
			String str = sc.nextLine();
			System.out.println("");
			switch(str) {
			case "1" : addIncomeCategory(); break;
			case "2" : deleteIncomeCategory(); break;
			case "0" : return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.\n");
			}
		}
	}
	
	public void addIncomeCategory () {
		System.out.print("추가할 분류명 입력 : ");
		String incomeName = sc.nextLine();
		System.out.print("");
		incomeCategoryArr[idxIncomeCateArr] = incomeName;
		idxIncomeCateArr++;
		System.out.println("분류가 추가되었습니다.");
		System.out.println("");
	}
	
	public void deleteIncomeCategory () {
		System.out.print("삭제할 분류명 입력 : ");
		String incomeName = sc.nextLine();
		System.out.print("");
		for (int i=0; i<idxIncomeCateArr; i++) {
			if (incomeCategoryArr[i] == null) {
				System.out.print("");
			}
			else if (incomeCategoryArr[i].equals(incomeName)) {
				incomeCategoryArr[i] = null;
				System.out.println("분류가 삭제되었습니다.");
				System.out.println("");
				return;
			}
			else {
				System.out.print("");
			}
	
		}
		System.out.println("잘못 입력하였습니다. 다시 입력해주세요.\n");
	}
	
	public void printExpenseCategory () {
		while(true) {
			int count = 1;
			System.out.println("------ 지출 분류 설정 ------");
			System.out.println("NO / 분류명");
			for(int i=0; i<idxExpenseCateArr; i++) {
				if (expenseCategoryArr[i] != null) {
					System.out.println(count + " / " + expenseCategoryArr[i]);
					count++;
				}
			}
			System.out.println("-------------------------");
			System.out.println("1. 분류 추가하기");
			System.out.println("2. 분류 삭제하기");
			System.out.println("0. 이전 메뉴로 돌아가기");
			System.out.print("메뉴 번호 선택 : ");
			String str = sc.nextLine();
			System.out.println("");
			switch(str) {
			case "1" : addExpenseCategory(); break;
			case "2" : deleteExpenseCategory(); break;
			case "0" : return;
			default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요.\n");
			}
		}
	}
	
	public void addExpenseCategory () {
		System.out.print("추가할 분류명 입력 : ");
		String incomeName = sc.nextLine();
		System.out.print("");
		expenseCategoryArr[idxExpenseCateArr] = incomeName;
		idxExpenseCateArr++;
		System.out.println("분류가 추가되었습니다.");
		System.out.println("");
	}
	
	public void deleteExpenseCategory () {
		System.out.print("삭제할 분류명 입력 : ");
		String incomeName = sc.nextLine();
		System.out.print("");
		for (int i=0; i<idxExpenseCateArr; i++) {
			if (expenseCategoryArr[i] == null) {
				System.out.print("");
			}
			else if (expenseCategoryArr[i].equals(incomeName)) {
				expenseCategoryArr[i] = null;
				System.out.println("분류가 삭제되었습니다.");
				System.out.println("");
				return;
			}
			else {
				System.out.print("");
			}
	
		}
		System.out.println("잘못 입력하였습니다. 다시 입력해주세요.\n");
	}
	
}
