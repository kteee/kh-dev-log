package main;

public class Main {

	public static void main(String[] args) {


		Pokemon[] pokemonArr = new Pokemon[2];
		
		pokemonArr[0] = new Pikachu();
		pokemonArr[0].name = "피카츄";
		pokemonArr[0].bodyAttack();
		pokemonArr[0].skill01();
		
		pokemonArr[1] = new Turtle();
		pokemonArr[1].name = "꼬부기";
		pokemonArr[1].bodyAttack();
		pokemonArr[1].skill01();
		
		// 객체야 너가 들고있는 skill01 실행해~ 하면 자식부터 뒤짐 (자식한테 있으면 해당 메서드 실행)
		// 상속관계에 있을 때 부모의 메서드를 자식이 덮어쓰기 해서 사용하는 경우 
		// -> 이 경우 '이 메소드는 부모한테 있는거 덮어쓰기 한거임' 라고 알려줘야 함 (@Override)
	}

}
