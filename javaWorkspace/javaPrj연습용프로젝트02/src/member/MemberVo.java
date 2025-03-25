package member;

public class MemberVo {
	
	private String memberNo;
	private String id;
	private String pwd;
	private String nickname;
	private String adress;
	private String phone;
	
	public MemberVo(String memberNo, String id, String pwd, String nickname, String adress, String phone) {
		this.memberNo = memberNo;
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.adress = adress;
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "MemberVo [memberNo=" + memberNo + ", id=" + id + ", pwd=" + pwd + ", nickname=" + nickname + ", adress="
				+ adress + ", phone=" + phone + "]";
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
