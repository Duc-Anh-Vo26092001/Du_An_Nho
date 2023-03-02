package bean;

public class Product {
	private int id;
    private String name;
    private String image;
    private long price;
    private long amount;
    private String title;
    private String description;
    private String cid;
	public Product(int id, String name, String image, long price, long amount, String title, String description,
			String cid) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.amount = amount;
		this.title = title;
		this.description = description;
		this.cid = cid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", amount=" + amount
				+ ", title=" + title + ", description=" + description + ", cid=" + cid + "]";
	}
   

    
   

}
