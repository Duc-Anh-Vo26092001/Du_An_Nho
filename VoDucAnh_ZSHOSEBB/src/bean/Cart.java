package bean;

public class Cart {
	private String id;
	private String image;
	private String name;
	private long price;
	private long amount;
	private long intomoney;
	public Cart(String id, String image, String name, long price, long amount) {
		super();
		this.id = id;
		this.image = image;
		this.name = name;
		this.price = price;
		this.amount = amount;
		this.intomoney = price*amount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public long getIntomoney() {
		return price*amount;
	}
	public void setIntomoney(long intomoney) {
		this.intomoney = intomoney;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", image=" + image + ", name=" + name + ", price=" + price + ", amount=" + amount
				+ ", intomoney=" + intomoney + "]";
	}
	

	
	
	
	
	

}
