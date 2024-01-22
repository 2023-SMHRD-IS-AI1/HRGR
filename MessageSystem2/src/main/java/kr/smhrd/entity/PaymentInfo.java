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
public class PaymentInfo {
	
    private String payment_method;
    private Integer paid_amount;
    @NonNull private String imp_uid;
    private String merchant_uid;

    // 생성자, getter, setter 메서드
}
