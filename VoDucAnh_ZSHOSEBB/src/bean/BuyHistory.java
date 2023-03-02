package bean;



public class BuyHistory {
	 private String invoiceid;
	 private String name;
	 private String purchdate;
	 private long quantitypurchased;
	 private long price;
	 private long intomoney;
	 private int condition;
	 private int uID;
	public BuyHistory(String invoiceid, String name, String purchdate, long quantitypurchased, long price,
			long intomoney, int condition, int uID) {
		super();
		this.invoiceid = invoiceid;
		this.name = name;
		this.purchdate = purchdate;
		this.quantitypurchased = quantitypurchased;
		this.price = price;
		this.intomoney = intomoney;
		this.condition = condition;
		this.uID = uID;
	}
	public String getInvoiceid() {
		return invoiceid;
	}
	public void setInvoiceid(String invoiceid) {
		this.invoiceid = invoiceid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPurchdate() {
		return purchdate;
	}
	public void setPurchdate(String purchdate) {
		this.purchdate = purchdate;
	}
	public long getQuantitypurchased() {
		return quantitypurchased;
	}
	public void setQuantitypurchased(long quantitypurchased) {
		this.quantitypurchased = quantitypurchased;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public long getIntomoney() {
		return intomoney;
	}
	public void setIntomoney(long intomoney) {
		this.intomoney = intomoney;
	}
	public int getCondition() {
		return condition;
	}
	public void setCondition(int condition) {
		this.condition = condition;
	}
	public int getuID() {
		return uID;
	}
	public void setuID(int uID) {
		this.uID = uID;
	}
	public BuyHistory() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	 
	 
	 
	 
	 
}
