package manager;

public class ItemVo {

	private String itemNo;
	private String type;
	private String name;
	private int cnt;
	private int price;
	
	public String getItemNo() {
		return itemNo;
	}
	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
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
	@Override
	public String toString() {
		return "itemVo [itemNo=" + itemNo + ", type=" + type + ", name=" + name + ", cnt=" + cnt + ", price=" + price
				+ "]";
	}
	public ItemVo(String itemNo, String type, String name, int cnt, int price) {
		super();
		this.itemNo = itemNo;
		this.type = type;
		this.name = name;
		this.cnt = cnt;
		this.price = price;
	}
}
