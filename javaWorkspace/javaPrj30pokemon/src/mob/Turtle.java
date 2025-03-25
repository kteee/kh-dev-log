package mob;

public class Turtle extends Pokemon {

	public Turtle (int hp, int attack) {
		super("꼬부기", hp, attack);
	}
	
	@Override
	public void skill() {
		System.out.println("물대포!!");
	}

}
