package bean;

public class Adminsignup {
	private String Users;
    private String Pass;
    private boolean Permission;
	public Adminsignup(String users, String pass, boolean permission) {
		super();
		Users = users;
		Pass = pass;
		Permission = permission;
	}
	public String getUsers() {
		return Users;
	}
	public void setUsers(String users) {
		Users = users;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	public boolean isPermission() {
		return Permission;
	}
	public void setPermission(boolean permission) {
		Permission = permission;
	}
	public Adminsignup() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
}
