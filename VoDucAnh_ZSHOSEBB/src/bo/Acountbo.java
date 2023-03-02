package bo;


import java.util.List;

import bean.Account;
import dao.Acountdao;

public class Acountbo {
	Acountdao adao = new Acountdao();
	List<Account> acou;
	public List<Account> getAccount(){
		acou= adao.getAccount();
		return acou;
 }
}
