package kr.smhrd.entity;

import java.util.Date;

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
	
	
	
   
    private int seller_idx;
  
    
    private int img_idx;
   
	
    private String prod_cust_id;

	private String prod_desc;


	
	private String created_at;
	

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

	 private int qna_idx;
	    
	   
	   private String answer;
	   private String answered_at;
	   
	   private String prod_image_name;
	   private String product_customer_id;
	   private String seller_company_name;
	
	   private int avg_ratings;
	   
	   private String review_img_name;
	   private String product_img_name;
	   private String cust_nick;

	// tb_diary 컬럼명
		private String diary_title;
		private String diary_content;
		private int diary_likes;

		private String company_name;
		
		private String certified_yn;


		// 메인 영농일지 캡슐
		public Product(String created_at, String cust_id, String diary_title, String diary_content, int diary_likes
				, String company_name,String img_name) {
			super();
			this.created_at = created_at;
			this.cust_id = cust_id;
			this.diary_title = diary_title;
			this.diary_content = diary_content;
			this.diary_likes = diary_likes;
			this.company_name=company_name;
			this.img_name=img_name;
		}


		// 메인 구매량 top5 캡슐
		public Product(String prod_name, String prod_price, int prod_ratings, @NonNull int prod_idx,String img_name) {
			super();
			this.prod_name = prod_name;
			this.prod_price = prod_price;
			this.prod_ratings = prod_ratings;
			this.prod_idx = prod_idx;
			this.img_name=img_name;
		}


		// 메인 에디터 추천 캡슐
		public Product(String prod_name, String prod_desc, String created_at,String img_name) {
			super();
			this.prod_name = prod_name;
			this.prod_desc = prod_desc;
			this.created_at = created_at;
			this.img_name=img_name;
		}
		
		private String question;
		private Date questioned_at;

		public Product(String cust_id, @NonNull int prod_idx, String question, Date questioned_at) {
			super();
			this.cust_id = cust_id;
			this.prod_idx = prod_idx;
			this.question = question;
			this.questioned_at = questioned_at;
		}
		
		private String review_content;
		private Date reviewed_at;
		private String image_name;
		

		private int diary_idx;


		
		public Product(int prod_ratings, String cust_id, @NonNull int prod_idx, String review_content,
				Date reviewed_at, String image_name) {
			super();
			this.prod_ratings = prod_ratings;
			this.cust_id = cust_id;
			this.prod_idx = prod_idx;
			this.review_content = review_content;
			this.reviewed_at = reviewed_at;
			this.image_name=image_name;
		}
	// 농사일지 등록 캡슐
public Product(String cust_id, String diary_title, String diary_content) {
			
			super();
			this.cust_id = cust_id;
			this.diary_title = diary_title;
			this.diary_content = diary_content;
			
		}



		public Product(String created_at, String cust_id, String diary_title, String diary_content, int diary_likes,
				int diary_idx) {
			super();
			this.created_at = created_at;
			this.cust_id = cust_id;
			this.diary_title = diary_title;
			this.diary_content = diary_content;
			this.diary_likes = diary_likes;
			this.diary_idx = diary_idx;
		}



		public Product(int img_idx, String img_real_name, String img_ext, long img_size, String image_name,
				int diary_idx) {
			super();
			this.img_idx = img_idx;
			this.img_real_name = img_real_name;
			this.img_ext = img_ext;
			this.img_size = img_size;
			this.image_name = image_name;
			this.diary_idx = diary_idx;
		}
	


}
