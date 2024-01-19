

 package kr.smhrd.mapper;
 
 import java.util.List;
  
 import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Cart;
import kr.smhrd.entity.Product;
 
 @Mapper 
 public interface ProductMapper { 

	 public List<Product> searchTopList(String searchInput); 
	 
	 public List<Product> searchNewList(String searchInput); 
	 
	 public List<Product> WishlistItem();
	 

	 public List<Product> searchList(String searchInput); 
	 public void prodRegist(Product product);
	 public void insertImage(Product product);
	 public Product searchIdx(Product product);

	 public void addToCart(Cart cart);
	 public Integer selectCart(Cart cart);
	 public List<Product> selectProdlist(String cust);
	 public List<Cart> selectAllCart(String cust_id);

	 public String selectProdName(int prod_idx);

	 public String selectProdImg(int prod_idx);
	 
	 public List<Product> selectProducts();
		
	public List<Product> selectLikeDiary();
		
	public List<Product> selectTopBuy();
		
	public List<Product> selectEditor();
	 
	 
	 
	 
	 }
 