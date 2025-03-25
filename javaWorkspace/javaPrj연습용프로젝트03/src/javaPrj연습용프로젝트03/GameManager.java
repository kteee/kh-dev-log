package javaPrj연습용프로젝트03;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class GameManager {

	private Scanner sc;
	private List<RecipeVo> recipeArr;

	private int seq;
	
	public GameManager() {
		sc = new Scanner(System.in);
		recipeArr = new ArrayList();
		seq = 1;
	}
	
	private String nickname;

	private String[] ingredients;
	private int score;
	private int chance;
	
	private GameManager[] userRanking = new GameManager[100];
	private int idx = 0;
	
	
	// 메뉴 
	public void menu() {
		System.out.println("1. 음료 레시피 관리");
		System.out.println("2. 주문 받기");
		System.out.println("3. 전체 랭킹 확인");
		System.out.println("9. 프로그램 종료");
		System.out.println("-----------------------");
		System.out.print("메뉴 번호 선택 : ");
		
		String num = sc.nextLine();
		switch(num) {
		case "1" : manageRecipe(); break;
		case "2" : printRanking(); break;
		case "9" : System.out.println("프로그램을 종료합니다."); return;
		default : System.out.println("잘못 선택하였습니다. 다시 선택해주세요."); 
		}
	}
	
	// 음료 레시피 관리
	public void manageRecipe() {
		System.out.println("------------ 음료 레시피 관리 ------------");
		System.out.println("NO / 종류 / 메뉴명 / 재료");
		printAllRecipe();
		System.out.println("-------------------------------------");
		System.out.println("1. 레시피 등록");
		System.out.println("2. 레시피 수정");
		System.out.println("3. 레시피 삭제");
		System.out.println("9. 이전 메뉴로 돌아가기");
		System.out.print("메뉴 번호 선택 : ");
		
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : enrollRecipe(); break;
		case "2" : editRecipe(); break;
		case "3" : deleteRecipe(); break;
		case "9" : return;
		default : System.out.println("잘못 선택하였습니다.");
		}
	}
	
	public void printAllRecipe() {
		for(int i=0; i<recipeArr.size(); i++) {
			System.out.println(recipeArr.get(i).getNo() + recipeArr.get(i).getType());
		}
		
	}
	
	public void enrollRecipe() {
		System.out.println("--- 레시피 등록 ---");
		System.out.print("종류 : ");
		String type = sc.nextLine();
		System.out.print("메뉴명 : ");
		String name = sc.nextLine();
		System.out.print("재료 : ");
		String[] ingredients = sc.nextLine().split(",");
		String no = String.valueOf(seq);
		RecipeVo vo = new RecipeVo(no, type, name, ingredients, ingredients.length); 
		recipeArr.add(vo);
		seq++;
		
	}
	public void editRecipe() {
		
	}
	public void deleteRecipe() {
		
	}
	
	public void newGame() {
	
		System.out.println("-------- 새 게임 시작 --------");
		System.out.print("닉네임 입력 : ");
		nickname = sc.nextLine();
		System.out.println("");
		score = 0;
		chance = 3;
		System.out.println("* * * * * * * * * * * * * Game Start! * * * * * * * * * * * * *");
		while (true) {
			System.out.println("---------------------------------------------------------------");
			System.out.println("닉네임: [" + nickname + "] / " + "기회: [" + chance + "] / " + "나의 점수: [" + score + "]");
			System.out.println("재료: [물, 우유, 탄산수, 에스프레소, 얼음, 시럽, 녹차잎, 딸기, 초콜렛, 캬라멜]");
			System.out.println("---------------------------------------------------------------");
			
			int random = (int) (Math.random() * 4 + 1);
		/*
			switch(String.valueOf(random)) {
			case "1" : 
				ingredients = new String[] {"물", "에스프레소", "얼음"};
				menu = new Americano("아이스 아메리카노", ingredients, 3); 
				break;
			case "2" :
				ingredients = new String[] {"우유", "에스프레소", "얼음"};
				menu = new Caffelatte("아이스 카페라떼", ingredients, 3); 
				break;
			case "3" :
				ingredients = new String[] {"물", "녹차잎"};
				menu = new GreenTea("녹차", ingredients, 2); 
				break;
			case "4" : 
				ingredients = new String[] {"우유", "얼음", "딸기", "시럽"};
				menu = new StrawberryFrappe("딸기프라페", ingredients, 4); 
				break;
			default : System.out.println("잘못 선택하였습니다.");
			}
			
			System.out.println("메뉴명 : " + menu.getRecipeName() + " [필요재료수 " + menu.getIngredientsNum() + "]");
			System.out.println("재료 입력 : ");
		
			int answerNum = 0;
			for(int i=0; i<menu.getIngredientsNum(); i++) {
				String userInput = sc.nextLine();
				for (int j=0; j<menu.getIngredientsNum(); j++) {
					if(userInput.equals(menu.getIngredients(j))) {
						answerNum++;
						menu.setIngredients(j, "맞췄음~~");
					}
				}
			}
			if (answerNum == menu.getIngredientsNum()) {
				System.out.println("*** 음료 만들기 성공!! (점수 +10) ***");
				score += 10;
			}
			else {
				System.out.println("*** 음료 만들기 실패.. (기회 -1) ***");
				chance -= 1;
			}
			
			if (chance == 0) {
				System.out.println("\n* * * * 게임 종료 [나의 점수 : " + score + "] * * * *\n");
				userRanking[idx] = new GameManager();
				userRanking[idx].nickname = nickname;
				userRanking[idx].score = score;
				System.out.println(userRanking[idx].nickname);
		        idx++;
				return;
			}
				*/
		}
	}
	
	public void printRanking() {
		System.out.println("\n------ 전체 랭킹 조회 ------");
		System.out.println("순위 / 닉네임 / 점수");
		for(int i=0; i<idx; i++) {
			for(int j=i; j<idx; j++) {
				if (userRanking[i].score < userRanking[j].score) {
					int tempScore = userRanking[j].score;
					userRanking[j].score = userRanking[i].score;
					userRanking[i].score = tempScore;
					String tempNick = userRanking[j].nickname;
					userRanking[j].nickname = userRanking[i].nickname;
					userRanking[i].nickname = tempNick;
				}
			}
		}

		for (int i=0; i<idx; i++) {
			System.out.println(i+1 + " / " + userRanking[i].nickname + " / " + userRanking[i].score);
		}
		System.out.println("");
		return;
	}
}
