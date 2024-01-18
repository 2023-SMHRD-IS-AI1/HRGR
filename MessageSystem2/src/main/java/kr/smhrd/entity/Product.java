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
	private int cart_count;

	
	private String prod_cust_id;

	private String prod_desc;


	
	private int created_at;
	

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
	
	// tb_order 컬럼명
	private int order_idx;
	private int total_amunt;
	private int discount_amount;
	private int pay_amount;
	private String pay_method;
	private int paid_amount;
	private String delivery_addr;
	private String receiver_name;
	private String receiver_phone;
	private String delivery_msg;
	private String order_status;
	private String ordered_at;




	public Product(String prod_name,String cust_id, @NonNull int prod_idx, int order_idx,
			int total_amunt, int discount_amount, int pay_amount, String pay_method, int paid_amount,
			String delivery_addr, String receiver_name, String receiver_phone, String delivery_msg, String order_status,
			String ordered_at,String img_name) {
		super();
		this.prod_name = prod_name;
		
		this.cust_id = cust_id;
		this.prod_idx = prod_idx;
		this.order_idx = order_idx;
		this.total_amunt = total_amunt;
		this.discount_amount = discount_amount;
		this.pay_amount = pay_amount;
		this.pay_method = pay_method;
		this.paid_amount = paid_amount;
		this.delivery_addr = delivery_addr;
		this.receiver_name = receiver_name;
		this.receiver_phone = receiver_phone;
		this.delivery_msg = delivery_msg;
		this.order_status = order_status;
		this.ordered_at = ordered_at;
		this.img_name = img_name;
	}
	
	
	

}
