package bo;


import bean.Adminsignup;
import dao.Adminsignupdao;

public class Adminsignupbo {
	Adminsignupdao dndao= new Adminsignupdao();
	  public Adminsignup admindn(String Users, String Pass) {
		  return dndao.admindn(Users,Pass);
	  }
}
