package main;

import game.GameManager;
import mob.Pokemon;

public class Main {

	public static Pokemon userPokemon;
	public static Pokemon comPokemon;

	public static void main(String[] args) {
		
		System.out.println("====== 포켓몬 ======");
		
		GameManager gm = new GameManager();
		gm.selectPokemon();
		System.out.println("나의 포켓몬 : " + userPokemon.toString());
		System.out.println("적 포켓몬 : " + comPokemon.toString());
		
		while(true) {
			System.out.println("--- battle ----");
			System.out.println("유저 Turn!");
			gm.battle(userPokemon, comPokemon);
			if(comPokemon.getHp() <= 0) {
				break;
			}
			System.out.println("상대방 Turn!");
			gm.battle(comPokemon, userPokemon);
			if(userPokemon.getHp() <= 0) {
				break;
			}
		}
		
		
		/* 객체를 그냥 출력하면 .toString()과 같은 값을 내뱉는다 
		 * 
		System.out.println(userPokemon);
		System.out.println(userPokemon.toString());
		
		System.out.println(userPokemon.toString());
		System.out.println(comPokemon.toString());
		*
		*/
		

	}

}
