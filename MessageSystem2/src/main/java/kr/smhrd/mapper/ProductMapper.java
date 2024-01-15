

 package kr.smhrd.mapper;
 
 import java.util.List;
  
 import org.apache.ibatis.annotations.Mapper;
 
 import kr.smhrd.entity.Product;
 
 @Mapper 
 public interface ProductMapper { 
	 public List<Product> searchList(String searchInput); 
	 public void prodRegist(Product product);
	 }
 