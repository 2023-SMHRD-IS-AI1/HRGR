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
	
}
