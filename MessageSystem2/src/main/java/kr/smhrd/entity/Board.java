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

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class Board {

	
	public Board(int idx, @NonNull String title, @NonNull String writer, @NonNull String filename,
			@NonNull String content, String b_date, String cust_id, int prod_idx, String prod_name, String img_name,
			String review_content, int prod_ratings, String reviewed_at) {
		super();
		this.idx = idx;
		this.title = title;
		this.writer = writer;
		this.filename = filename;
		this.content = content;
		this.b_date = b_date;
		this.cust_id = cust_id;
		this.prod_idx = prod_idx;
		this.prod_name = prod_name;
		this.img_name = img_name;
		this.review_content = review_content;
		this.prod_ratings = prod_ratings;
		this.reviewed_at = reviewed_at;
	}
	private int idx;
	@NonNull private String title;
	@NonNull private String writer;
	@NonNull private String filename;
	@NonNull private String content;
	private String b_date;
	
	
	private String cust_id;
	private int prod_idx;
	private String prod_name;
	
	
	private String img_name;
	// 리뷰
	private String review_content;
	private int prod_ratings;
	private String reviewed_at;
	
	public Board(String cust_id) {
		super();
		this.cust_id = cust_id;
	}
	
		
}
