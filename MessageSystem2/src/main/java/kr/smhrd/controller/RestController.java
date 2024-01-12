package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Member;
import kr.smhrd.mapper.MemberMapper;

// 비동기 방식만 처리해주는 controller

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private MemberMapper memberMapper;
	
	// Email 중복체크
	@RequestMapping("/phoneCheck")
	public int phoneCheck(@RequestParam("cust_phone") String cust_phone) {

		Member member = memberMapper.phoneCheck(cust_phone);

		if (member != null) { // 사용 불가능한 이메일
			return 0;
		} else {
			// 사용 가능한 이메일
			return 1;
		}
	}
	
}
