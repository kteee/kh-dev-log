package mob;

public class Pikachu extends Pokemon {

	public Pikachu (int hp, int attack) {
		super("피카츄", hp, attack);
	}
	
	@Override
	public void skill() {
		System.out.println("백만볼트!!");
	}

}
