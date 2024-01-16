package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@ToString
public class Product {
	private String prod_name;
	private String prod_price;
	private String prod_type;
	private String prod_stock;
	private int prod_ratings;
<<<<<<< HEAD
	
	private String prod_cust_id;
=======
>>>>>>> branch 'master' of https://github.com/2023-SMHRD-IS-AI1/HRGR.git
	private String prod_desc;
<<<<<<< HEAD
	private int prod_price;
	private int prod_stock;
	private int created_at;
	private int prod_idx;
=======
	private String cust_id;
	
	// 상품 이미지파일 컬럼명
	@NonNull
	private int prod_idx;
	private String img_name;
	private String img_real_name;
	private String img_ext;
	private long img_size;
	private String imgData;
	
	
	public Product(String prod_name, String prod_type, String prod_stock, String prod_price, String prod_desc,
			String img_name) {
		// TODO Auto-generated constructor stub
		super();
		this.prod_name = prod_name;
		this.prod_price = prod_price;
		this.prod_type = prod_type;
		this.prod_stock = prod_stock;
		this.prod_desc = prod_desc;
		this.img_name = img_name;
	}
	
	
>>>>>>> branch 'master' of https://github.com/2023-SMHRD-IS-AI1/HRGR.git
}
