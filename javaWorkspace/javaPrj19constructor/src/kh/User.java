package kh;

public class User {
	
	private String id;
	private String pwd;
	private String nick;
	private int age;
	private double height;
	private double weight;
	private boolean isQuit;
	
	public User(String id, String pwd, String nick, int age, double height, double weight, boolean isQuit) {
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.age = age;
		this.height = height;
		this.weight = weight;
		this.isQuit = isQuit;
	}

	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", nick=" + nick + ", age=" + age + ", height=" + height
				+ ", weight=" + weight + ", isQuit=" + isQuit + "]";
	}

	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPwd() {
		return this.pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getNick() {
		return this.nick;
	}
	
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	public int getAge() {
		return this.age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public double getHeight() {
		return this.height;
	}
	
	public void setHeight(double height) {
		this.height = height;
	}
	
	public double getWeight() {
		return this.weight;
	}
	
	public void setWeight(double weight) {
		this.weight = weight;
	}
	
	// boolean 타입은 이름에 get, set 안붙여도 됨
	public boolean IsQuit() {  
		return this.isQuit;
	}
	
	public void IsQuit(boolean isQuit) {
		this.isQuit = isQuit;
	}
	
}
