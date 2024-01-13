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
/*
 * @AllArgsConstructor
 * 
 * @RequiredArgsConstructor
 * 
 * @NoArgsConstructor
 */
@ToString

public class Product {

	@NonNull private String prod_name;
}
