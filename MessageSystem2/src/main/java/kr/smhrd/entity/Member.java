package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data // 만능
@AllArgsConstructor // 모든 필드를 받는 생성자메소드
@NoArgsConstructor // 기본 생성자메소드
@RequiredArgsConstructor // 내가 지정한 필드를 받는 생성자메소드
@Getter // getter메소드
@ToString 
@Setter // setter메소드
public class Member {

	@NonNull
	private String cust_email;
	@NonNull
	private String cust_pw;
	@NonNull
	private String cust_id;
	private String cust_phone;
	private String cust_addr;
	private String cust_name;
	private String cust_birthdate;
	
	private String email_domain;
	private String cust_gender;
	private String cust_nick;
	private String cust_role;
	
	
	private String company_name;
	private String company_addr;
	private String company_bno;
	private String business_type;
	private int prod_idx;
	private String created_at;
	private String prod_name;
	private String prod_price;
	private String img_name;
	public Member(String cust_id,  String cust_phone,@NonNull String cust_pw,String cust_name, String cust_nick, @NonNull String cust_email, 
			  String cust_birthdate,String cust_addr) {
		super();
		this.cust_id = cust_id;
		this.cust_phone = cust_phone;
		this.cust_pw = cust_pw;
		this.cust_email = cust_email;
		this.cust_addr = cust_addr;
		this.cust_name = cust_name;
		this.cust_birthdate = cust_birthdate;
		this.cust_nick = cust_nick;
	}
	public Member(int prod_idx) {
		super();
		this.prod_idx = prod_idx;
	}
	public Member(@NonNull String cust_id, int prod_idx) {
		super();
		this.cust_id = cust_id;
		this.prod_idx = prod_idx;
	}
	
	
	
	
}
