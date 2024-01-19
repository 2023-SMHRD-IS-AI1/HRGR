package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
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

import com.mysql.cj.Session;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Cart;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.ProdDto;
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
		// if 문으로 검색 결과 없을때 창 만들어야함;
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
	
	
	// 장바구니에 추가
	@PostMapping("/insertCart")
	public ResponseEntity<String> addToCart(
Cart cart, HttpSession session, @RequestBody ProdDto dto) {
		
		System.out.println("\n !!insertCart 시작!! \n");
		
		
		// 세션에서 로그인 한 사용자의 정보 가져오기
	    Member loginMember = (Member)session.getAttribute("loginMember");

		// 로그인 한 사용자의 cust_id값 가져오기
	    String cust_id = loginMember.getCust_id();

	    // cart에 cust_id, prod_idx, prod_price값 넣기
	    cart.setCust_id(cust_id);
		
		cart.setProd_idx(dto.getProd_idx()); 
		cart.setCart_count(dto.getCart_count());
		cart.setProd_price(dto.getProd_price());
	    
	    System.out.println(cart.toString());
	    // Mapper로 이동
	    // DB검색해서 같은 prod_idx, cust_id가 있다면 안넣음
	    
	    Integer cnt = ProductMapper.selectCart(cart);
	    
	    if(cnt != null && cnt > 0){
	    	System.out.println("이미 장바구니에 넣은 상품입니다");
	    }else {
	    	System.out.println("장바구니 담기 성공~");
	    	ProductMapper.addToCart(cart);
	    }
	    
	    return ResponseEntity.ok("Added to myCart");
	}
	
	
		@RequestMapping("/goMyCart")
		public String goMyCart(Model model, HttpSession session, Cart cart) {
			
			// 세션에서 로그인 한 사용자의 정보 가져오기
		    Member loginMember = (Member)session.getAttribute("loginMember");

			// 로그인 한 사용자의 cust_id값 가져오기
		    String cust_id = loginMember.getCust_id();
			
		    // 사용자의 장바구니에 있는 모든 상품 Cart에 담아서 가져오기
			List<Cart> cartList = ProductMapper.selectAllCart(cust_id);
			
			System.out.println("카트리스트 : "+ cartList);
			
			List<Cart> cartList2 = new ArrayList<>();
			
			for(Cart cart1 : cartList) {
				int prod_idx = cart1.getProd_idx();
				System.out.println(prod_idx);
				
				// 상품 이름 가져오기
				String prod_name = ProductMapper.selectProdName(prod_idx);
				System.out.println("상품 이름 : "+ prod_name);
				// 상품 이미지이름 가져오기
				String img_name = ProductMapper.selectProdImg(prod_idx);
				System.out.println("상품 이미지 이름 : " + img_name);
				
				int cart_count = cart1.getCart_count();
				System.out.println("상품 카운트 : "+ cart_count);
				
				int prod_price = cart1.getProd_price();
				System.out.println("상품 가격 : "+ prod_price);
				
				// Cart 객체 생성
			    Cart cart2 = new Cart();
			    // 필요한 정보 설정
			    cart2.setProd_idx(prod_idx);
			    cart2.setProd_name(prod_name);
			    cart2.setImg_name(img_name);
			    cart2.setProd_price(cart1.getProd_price());
			    cart2.setCart_count(cart_count);
			    
			    
			    // cartList2에 추가
			    cartList2.add(cart2);
			    
			    System.out.println("투 스트링 : "+cart2.toString());
			    
			}
			
			model.addAttribute("Cart", cartList2);
			
			// 상품 정보도 가져오기
			
			
			return "myCart";
		}
		
		@RequestMapping("/goprodDetail")
	       public String goprodDetail(@RequestParam("prod_idx") int prod_idx,
	                                   HttpSession session,Model model) {
	           // 이제 prodIdx, prodName, prodPrice, quantityInputId 값을 사용하여 로직을 수행할 수 있습니다.
	         
	         // 세션에서 로그인 한 사용자의 정보 가져오기
			System.out.println("asdgasdgasdga!!!!:    "+ prod_idx);
	          List<Product> prodList = ProductMapper.prodDetail(prod_idx);
	          model.addAttribute("prodList",prodList);
	          
	          List<Product> qnaList = ProductMapper.searchQna(prod_idx);
	          model.addAttribute("qnaList",qnaList);
	          System.out.println("qnsandasnfasnf!~~~~~~~~~:" + qnaList);
	          
	          List<Product> reviewList = ProductMapper.searchReview(prod_idx);
	          model.addAttribute("reviewList",reviewList);
	          
	          return "prodDetail"; // 적절한 뷰 이름을 반환합니다.
	       }
	
	
}
