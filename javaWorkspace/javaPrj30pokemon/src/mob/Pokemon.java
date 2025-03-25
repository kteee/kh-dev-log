package mob;

public abstract class Pokemon {
	
	private String name;
	private int hp; 
	private int atk;
	
	public Pokemon(String name, int hp, int atk) {
		this.name = name;
		this.hp = hp;
		this.atk = atk;
	}
	
	public void bodyAttak() {
		System.out.println(name + "의 몸통박치기!!");
	}
	
	@Override
	// 부모(Object클래스)의 toString을 재정의(오버라이드)
	// 오른쪽 마우스 -> source -> genarate toString으로 자동 생성 가능
	// 현재 객체의 모든 필드를 확인할 수 있다
	public String toString() {
		return name + " [hp=" + hp + ", atk=" + atk + "]";
	}

	public abstract void skill();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getAtk() {
		return atk;
	}
	public void setAtk(int atk) {
		this.atk = atk;
	}
	
}
