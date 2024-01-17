package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.Product;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.ProductMapper;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ProdController {
	@Autowired
	private ProductMapper ProductMapper;
	
	@RequestMapping("/gosearch")
	public String gosearch(Model model, @RequestParam("searchInput") String searchInput,HttpSession session) {
		// if 문으로 겁색 결과 없을때 창 만들어야함;
		List<Product> prodlist = ProductMapper.searchTopList(searchInput);
		List<Product> prodNewlist = ProductMapper.searchNewList(searchInput);
		Member member = (Member)session.getAttribute("loginMember");
		System.out.println(searchInput);
		System.out.println(prodlist);
		model.addAttribute("Product", prodlist);
		model.addAttribute("ProductNew", prodNewlist);
		System.out.println(model.toString());
		return "searchResult" ;
	}

	@RequestMapping("/prodRegist")
	public String prodRegist(Product product, HttpSession session, HttpServletRequest request) {

	    MultipartRequest multi = null;

	    ServletContext context = request.getSession().getServletContext();
	    String savePath = context.getRealPath("/resources/upload");
	    System.out.println("절대 경로: " + savePath);
	    // 파일 최대 용량크기 설정
	    int maxSize = 1024 * 1024 * 10; // 10mb

	    String enc = "UTF-8";

	    DefaultFileRenamePolicy dftrp = new DefaultFileRenamePolicy();

	    File imgFile = null;
	    
	    try {
	        multi = new MultipartRequest(request, savePath, maxSize, enc, dftrp);
	        String prod_name = multi.getParameter("prod_name");
	        String prod_type = multi.getParameter("prod_type");
	        String prod_stock = multi.getParameter("prod_stock");
	        String prod_price = multi.getParameter("prod_price");
	        String prod_desc = multi.getParameter("prod_desc");
	        String img_name = multi.getFilesystemName("img_name");

	        imgFile = multi.getFile("img_name");

	        product = new Product(prod_name, prod_type, prod_stock, prod_price, prod_desc, img_name);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    // 세션에서 로그인 한 사용자의 정보 가져오기
	    Member loginMember = (Member)session.getAttribute("loginMember");

	    // 로그인 한 사용자의 cust_id값 가져오기
	    String cust_id = loginMember.getCust_id();

	    // member에 cust_id값 넣어서 tb_prod 테이블에 데이터 추가
	    product.setCust_id(cust_id);

	    System.out.println("값1 확인~~~~~ : " + product.toString()); // 값 확인
	    ProductMapper.prodRegist(product);
	    
	    // 방금 insert 한 상품의 prod_idx 가져오기
	    Product product1 =  ProductMapper.searchIdx(product);
	    product.setProd_idx(product1.getProd_idx());
	    
	    // 파일 정보 DB에 저장
	    String imgExtension = FilenameUtils.getExtension(product.getImg_name());
	    long imgSize = imgFile.length();
	    String imgPath = "/resources/upload/" + product.getImg_name();
	    String imgAbsolutePath = savePath + File.separator + product.getImg_name();
	    
	    product.setImg_real_name(imgAbsolutePath);
	    product.setImg_size(imgSize);
	    product.setImg_ext(imgExtension);
	    
	    
	    // 이미지 정보를 DB에 저장
	    
	    System.out.println("값2 확인~~~~~ : " + product.toString()); // 값 확인
	    ProductMapper.insertImage(product);

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
