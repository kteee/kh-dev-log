package main;

public class Pikachu extends Pokemon {

	// 오버라이드는 메서드 시그니처가 동일해야 성립한다 (접근제한자, 리턴타입 등 다르면 성립x)
	@Override
	public void bodyAttack() {
		System.out.println("피카츄의 몸통박치기 !!!");
	}
}
