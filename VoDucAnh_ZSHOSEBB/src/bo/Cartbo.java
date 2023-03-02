package bo;

import java.util.ArrayList;

import bean.Cart;



public class Cartbo {
	public ArrayList<Cart> cr= new ArrayList<Cart>();
	  public void Them(String id, String image, String name, long price, long amount) {
		  for(Cart h: cr)
			  if(h.getId().equals(id)) {
				  h.setAmount(h.getAmount()+ amount);
				  return;
			  }
		  
		  cr.add(new Cart(id,image,name,price,amount));
	  }

	  public long Tongtien() {
		  long s=0;
		  for(Cart h: cr)
			  s=s+h.getIntomoney();
		  return s;
	  }
	  public void XoaItem(String id) {
		  int n= cr.size();
		  if(id!=null) {
			  for(Cart i: cr) {
				  if(i.getId().equals(id)) {
					  cr.remove(i);
					  break;
				  }
			  }
		  }	  
	  }
/*   public void CapnhapCart(ArrayList<String> DsMaSach, ArrayList<Long> DsSoLuong) {
  	  int n=DsMaSach.size();
  	  for(int i=0; i<n; i++) 
  		 for(giohangbean item: ds)
  			 if(item.getMasach().equals(DsMaSach.get(i))){
  				 
  				 item.setSoluong(DsSoLuong.get(i));
  			 }
  	  
    }*/
	  public void xoaTatCa() {
			cr.clear();
		}
	  public void Capnhapgiohang(String id, long amount) {
	        int n = cr.size();
	        for(int i=0; i<n; i++) 
	           for(Cart item: cr)
	               if(item.getId().equals(id)){

	                   item.setAmount(amount);;
	               }

	    }

}
