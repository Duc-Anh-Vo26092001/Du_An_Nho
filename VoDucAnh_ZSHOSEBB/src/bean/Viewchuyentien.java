package bean;

public class Viewchuyentien {
  private long invoiceDetailid;
  private long invoiceid;
  private String fullname;
  private String name;
  private long quantitypurchased;
  private long price;
  private long intomoney;
  private int condition;
public Viewchuyentien(long invoiceDetailid, long invoiceid, String fullname, String name, long quantitypurchased,
		long price, long intomoney, int condition) {
	super();
	this.invoiceDetailid = invoiceDetailid;
	this.invoiceid = invoiceid;
	this.fullname = fullname;
	this.name = name;
	this.quantitypurchased = quantitypurchased;
	this.price = price;
	this.intomoney = intomoney;
	this.condition = condition;
}
public long getInvoiceDetailid() {
	return invoiceDetailid;
}
public void setInvoiceDetailid(long invoiceDetailid) {
	this.invoiceDetailid = invoiceDetailid;
}
public long getInvoiceid() {
	return invoiceid;
}
public void setInvoiceid(long invoiceid) {
	this.invoiceid = invoiceid;
}
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public Viewchuyentien() {
	super();
	// TODO Auto-generated constructor stub
}
  
  
  

}
