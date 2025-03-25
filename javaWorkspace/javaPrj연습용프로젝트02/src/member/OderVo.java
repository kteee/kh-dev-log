package member;

public class OderVo {
	
	private String oderNo;
	private String type;
	private String name;
	private int cnt;
	private int price;
	private int totalPrice;
	
	public String getOderNo() {
		return oderNo;
	}
	public void setOderNo(String oderNo) {
		this.oderNo = oderNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "OderVo [oderNo=" + oderNo + ", type=" + type + ", name=" + name + ", cnt=" + cnt + ", price=" + price
				+ ", totalPrice=" + totalPrice + "]";
	}
	public OderVo(String oderNo, String type, String name, int cnt, int price, int totalPrice) {
		super();
		this.oderNo = oderNo;
		this.type = type;
		this.name = name;
		this.cnt = cnt;
		this.price = price;
		this.totalPrice = totalPrice;
	}
	
	
}
