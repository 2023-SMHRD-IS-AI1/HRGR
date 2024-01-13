package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.Member;
import kr.smhrd.entity.Product;
import kr.smhrd.mapper.ProductMapper;

@Controller
public class ProdController {
	
	@PostMapping("/searchProd")
	public String searchProd(@RequestParam String searchInput, HttpSession session, Model model, Product product ) {
		
		
		/* model.addAttribute("prod_name", prod_name); */
		
		return "searchResult" ;
	}
	
}
