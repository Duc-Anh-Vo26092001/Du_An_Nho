package bean;

public class Account {
	private int uId;
	private String user;
	private String pass;
	private String fullname;
	private String diachi;
	private String email;
	public Account(int uId, String user, String pass, String fullname, String diachi, String email) {
		super();
		this.uId = uId;
		this.user = user;
		this.pass = pass;
		this.fullname = fullname;
		this.diachi = diachi;
		this.email = email;
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Account [uId=" + uId + ", user=" + user + ", pass=" + pass + ", fullname=" + fullname + ", diachi="
				+ diachi + ", email=" + email + "]";
	}
	
	
	
	
	

}
