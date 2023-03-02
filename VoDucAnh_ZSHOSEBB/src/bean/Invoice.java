package bean;


public class Invoice {
 private String invoiceid;
 private int uID;
 private String purchdate;
 private int condition;
public Invoice(String invoiceid, int uID, String purchdate, int condition) {
	super();
	this.invoiceid = invoiceid;
	this.uID = uID;
	this.purchdate = purchdate;
	this.condition = condition;
}
public String getInvoiceid() {
	return invoiceid;
}
public void setInvoiceid(String invoiceid) {
	this.invoiceid = invoiceid;
}
public int getuID() {
	return uID;
}
public void setuID(int uID) {
	this.uID = uID;
}
public String getPurchdate() {
	return purchdate;
}
public void setPurchdate(String purchdate) {
	this.purchdate = purchdate;
}
public int getCondition() {
	return condition;
}
public void setCondition(int condition) {
	this.condition = condition;
}
public Invoice() {
	super();
	// TODO Auto-generated constructor stub
}


 
 
 
}
