

 package kr.smhrd.mapper;
 
 import java.util.List;
  
 import org.apache.ibatis.annotations.Mapper;
 
 import kr.smhrd.entity.Product;
 
 @Mapper 
 public interface ProductMapper { 
	 public List<Product> searchTopList(String searchInput); 
	 
	 public List<Product> searchNewList(String searchInput); 
	 
	 public List<Product> WishlistItem();
	 
	 }
 