package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.Member;
import kr.smhrd.entity.Product;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.ProductMapper;


@Controller
public class ProdController {
	@Autowired
	private ProductMapper ProductMapper;
	
	@RequestMapping("/gosearch")
	public String gosearch(Model model, @RequestParam("searchInput") String searchInput) {
		
		List<Product> prodlist = ProductMapper.searchList(searchInput);
		System.out.println(searchInput);
		System.out.println(prodlist);
		model.addAttribute("Product", prodlist);
		System.out.println(model.toString());
		return "search" ;
	}

	@RequestMapping("/prodRegist")
	public String prodRegist(@ModelAttribute("product") Product product, HttpSession session) {
//		세션에서 로그인 한 사용자의 정보 가져오기 
		Member loginMember = (Member)session.getAttribute("loginMember");
		
//		로그인 한 사용자의 cust_id값 가져오기
		String cust_id = loginMember.getCust_id();
		
//		member에 cust_id값 넣어서 tb_prod 테이블에 데이터 추가
		product.setCust_id(cust_id);
		
		System.out.println("값 확인~~~~~ : "+product.toString()); // 값 확인
		ProductMapper.prodRegist(product);
		
//		방금 insert 한 상품의 prod_idx 가져오기
		
		/* ProductMapper.getProd_idx(); */
		/* int prod_idx = product.getProd_idx(); */
		
		/*
		 * ProductMapper.insertImage(product);
		 */
		return "Main";
	}
	
	
	
	@RequestMapping("/goSell")
	public String goSell() {
		
		return "prodRegist";
	}
	
	@RequestMapping("/uploadFile")
	public String uploadFile(Product product) {
		
		
		return "Main";
	}
	
}
