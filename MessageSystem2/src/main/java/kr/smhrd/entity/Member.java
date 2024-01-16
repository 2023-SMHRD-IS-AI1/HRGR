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
}
