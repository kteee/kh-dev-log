package member;

public class MemberVo {

	private String no;
	private String name;
	private String birthDate;
	private String phone;
	private String address;
	private String enrollDate;
	
	public MemberVo(String no, String name, String birthDate, String phone, String address, String enrollDate) {
		super();
		this.no = no;
		this.name = name;
		this.birthDate = birthDate;
		this.phone = phone;
		this.address = address;
		this.enrollDate = enrollDate;
	}
	
	public MemberVo() {
		
	}
	
	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", name=" + name + ", birthDate=" + birthDate + ", phone=" + phone + ", address="
				+ address + ", enrollDate=" + enrollDate + "]";
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

}
