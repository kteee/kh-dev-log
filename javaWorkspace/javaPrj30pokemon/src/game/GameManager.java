package game;

import java.util.Scanner;

import main.Main;
import mob.*; // mob 패키지의 모든 클래스 import

public class GameManager {

	private Scanner sc;
	
	public GameManager() {
		this.sc = new Scanner(System.in);
	}
	
	// 포켓몬 선택 (나, 컴퓨터)
	public void selectPokemon() {
		System.out.println("--- 포켓몬 선택 ---");
		System.out.println("1. 피카츄");
		System.out.println("2. 파이리");
		System.out.println("3. 꼬부기");
		System.out.print("포켓몬 번호 선택 : ");
		String num = sc.nextLine();

		// HP : 100 ~ 200 사이 
		//ATK : 50 ~ 100 사이
	
		switch(num) {
		case "1" : Main.userPokemon = new Pikachu((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		case "2" : Main.userPokemon = new Lizard((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		case "3" : Main.userPokemon = new Turtle((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		default : System.out.println("잘못 선택하였습니다.");
		}
		
		int random = (int) (Math.random() * 3 + 1);
		
		switch(String.valueOf(random)) {
		case "1" : Main.comPokemon = new Pikachu((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		case "2" : Main.comPokemon = new Lizard((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		case "3" : Main.comPokemon = new Turtle((int)((Math.random()+1) * 100), (int)((Math.random()+1) * 50)); break;
		default : System.out.println("잘못 선택하였습니다.");
		}
	}
	
	// 배틀
	public void battle(Pokemon attacker, Pokemon defender) {

	
	
		
		String num;
		if(attacker.equals(Main.userPokemon)) {
			System.out.println("1. 기본공격 (성공률: 95%)");
			System.out.println("2. 스킬공격 (성공률: 40%)");
			System.out.print("공격 선택 : ");
			num = sc.nextLine();
		}
		else {
			System.out.println("1. 기본공격 (성공률: 95%)");
			System.out.println("2. 스킬공격 (성공률: 40%)");
			System.out.print("상대방 공격 : ");
			num = String.valueOf((int) (Math.random() * 2 + 1));
			System.out.println(num);
		}
		
		System.out.println("* * * * * * * * * * * * * * * * * *");
		if (num.equals("1")) {
			attacker.bodyAttak();
		}
		else {
			attacker.skill();
		}
		
		int a = defender.getHp();
		int b = attacker.getAtk();
		int dmg = num.equals("1") ? b : b*2;
		defender.setHp(a-dmg);
		
		System.out.println("적포켓몬(" + defender.getName() + ")은 "+ dmg + "의 데미지를 입었다!");
		System.out.println("적포켓몬 남은체력 : " + defender.getHp());
		System.out.println("* * * * * * * * * * * * * * * * * *");
		
		if (defender.getHp() <= 0) {
			System.out.println(defender.getName() +"는 패배하였습니다.. ");
			System.out.println(attacker.getName() +" 승리!");
		}	
	}
}
