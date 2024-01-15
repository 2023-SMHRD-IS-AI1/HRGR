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

@NoArgsConstructor
@RequiredArgsConstructor
 
@ToString
public class Product {

	@NonNull 
	private String prod_name;
	private String prod_price;
	private String prod_type;
	private String prod_stock;
	private int prod_ratings;
	private String prod_cust_id;
	private String prod_desc;
	private String cust_id;
}
