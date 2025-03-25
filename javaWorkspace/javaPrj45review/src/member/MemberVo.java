package member;

public class MemberVo {

	private String no;
	private String id;
	private String pwd;
	private String nick;
	
	public MemberVo(String no, String id, String pwd, String nick) {
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
	}
	
	public MemberVo() {
		// NoArgConstructor 안쓸건데 만든 이유 .. ?
		// -> 프레임워크 때문에 만들어줘야 함
	}
	
	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", id=" + id + ", pwd=" + pwd + ", nick=" + nick + "]";
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
}
