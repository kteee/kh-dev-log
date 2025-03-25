package mob;

public class Lizard extends Pokemon {
	
	public Lizard (int hp, int attack) {
		super("파이리", hp, attack);
	}
	
	@Override
	public void skill() {
		System.out.println("파이어볼!!");		
	}

}
