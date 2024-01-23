package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.Normalizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.GenericServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String gosearch(Model model, @RequestParam("searchInput") String searchInput,HttpSession session) throws IOException, ParseException{
		// if 문으로 검색 결과 없을때 창 만들어야함;
		int cnt = ProductMapper.nosearch(searchInput);
		
		if(cnt > 0) {
		List<Product> prodlist = ProductMapper.searchTopList(searchInput);
		List<Product> prodNewlist = ProductMapper.searchNewList(searchInput);
		Member member = (Member)session.getAttribute("loginMember");
		System.out.println(searchInput);
		System.out.println(prodlist);
		model.addAttribute("Product", prodlist);
		model.addAttribute("ProductNew", prodNewlist);
		System.out.println(model.toString());
		String name =ProductMapper.searchName(searchInput);
		System.out.println(name);
		try {
		    String apiUrl = "http://www.kamis.co.kr/service/price/xml.do?action=dailySalesList";

		    // URL에 추가할 매개변수
		    String certKey = "c31815c7-3cd7-49eb-ab85-83f0139faeab"; // OPEN-API 신청내용의 API-KEY 값 작성
		    String certId = "sdee153"; // OPEN-API 신청내용의 아이디 작성
		    String returnType = "json"; // json:Json 데이터 형식, xml:XML데이터형식 중 원하는 데이터 형식 작성

		    // URL 생성
		    StringBuilder urlBuilder = new StringBuilder(apiUrl);
		    urlBuilder.append("&" + URLEncoder.encode("p_cert_key", "UTF-8") + "=" + certKey);
		    urlBuilder.append("&" + URLEncoder.encode("p_cert_id", "UTF-8") + "=" + URLEncoder.encode(certId, "UTF-8"));
		    urlBuilder.append("&" + URLEncoder.encode("p_returntype", "UTF-8") + "=" + URLEncoder.encode(returnType, "UTF-8"));

		    // URL 연결 설정
		    URL url = new URL(urlBuilder.toString());
		    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		    conn.setRequestMethod("GET");

		    // 응답 코드 확인
		    int responseCode = conn.getResponseCode();
		    System.out.println("Response Code: " + responseCode);

		    // 응답 내용 읽기
		    BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String inputLine;
		    StringBuilder response = new StringBuilder();

		    while ((inputLine = in.readLine()) != null) {
		        response.append(inputLine);
		    }
		    in.close();

		    // 응답 내용 출력
		    JSONParser parser = new JSONParser();
		    JSONObject obj = (JSONObject) parser.parse(response.toString());
		    JSONArray priceArray = (JSONArray) obj.get("price");

		    // "price" 배열에서 각 객체의 "item_name", "dpr1", "dpr2" 값을 추출하여 출력
		    for (Object priceObj : priceArray) {
		        JSONObject priceObject = (JSONObject) priceObj;
		        String itemName = (String) priceObject.get("item_name");
		        String dpr1Value = (String) priceObject.get("dpr1");
		        String dpr2Value = (String) priceObject.get("dpr2");
		        String unitValue = (String) priceObject.get("unit");
		        String product_cls_name = (String) priceObject.get("product_cls_name");
		        // itemName에 "당근"이 포함되어 있으면 출력 및 모델에 추가
		        int index = itemName.indexOf('/');
	            if (index != -1) {
	                itemName = itemName.substring(0, index);
	                if (name.contains(itemName)) {
			            // "/" 앞의 문자열만 추출
			            if(product_cls_name.equals("소매")) {

	                	System.out.println("Item Name: " + itemName);
	                	System.out.println("dpr1 value: " + dpr1Value);
	                	System.out.println("dpr2 value: " + dpr2Value);
	                	System.out.println();
	                	model.addAttribute("today", dpr1Value);
	                	model.addAttribute("yesterday", dpr2Value);
	                	model.addAttribute("name", itemName);
	                	model.addAttribute("unit", unitValue);
			            }
			        }
	            }
		      
		    }

		

		} catch (Exception e) {
		    e.printStackTrace();
		}
			return "searchResult" ;
		}else {
			return "noSearchResult";
		}
		
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
	          List<Product> prodList = ProductMapper.prodDetail(prod_idx);
	          model.addAttribute("prodList",prodList);
	          System.out.println("상품식별자 !@!@#$!@$ !@$2!#:"+ prod_idx);
	          List<Product> qnaList = ProductMapper.searchQna(prod_idx);
	          model.addAttribute("qnaList",qnaList);
	          System.out.println("qnsandasnfasnf!~~~~~~~~~:" + qnaList);
	          
	          List<Product> reviewList = ProductMapper.searchReview(prod_idx);
	          model.addAttribute("reviewList",reviewList);
	          List<Product> list = ProductMapper.sellerDiaryimg(prod_idx);
	           model.addAttribute("sellerimg",list);
	           System.out.println("diary 사진들@@@:"+list);
	          return "prodDetail"; // 적절한 뷰 이름을 반환합니다.
	       }
		@RequestMapping("/submitQna")
		public String submitQna(@RequestParam("prod_idx") int prod_idx,
                @RequestParam("question") String question,HttpSession session,Member member) {
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			String cust_id = loginMember.getCust_id();
			Product product = new Product();
	        product.setProd_idx(prod_idx);
	        System.out.println("질문 사항!!  :" +prod_idx);
	        product.setCust_id(cust_id);
	        product.setQuestion(question);
	        
	        System.out.println("질문 사항!!  :" +question);
	        product.setQuestioned_at(new Date());
	        System.out.println(product.toString());
	        ProductMapper.insertQna(product); 
	        return "redirect:/";
		}


		// 장바구니에서 상품 삭제 
		@RequestMapping("/deleteCart")
		public ResponseEntity<String> deleteCart(@RequestBody Long[] prodIdxArray) {
		    // prodIdxArray를 사용하여 선택한 상품들을 처리
		    for (Long prod_idx : prodIdxArray) {
		        ProductMapper.deleteCart(prod_idx);
		    }

		    return ResponseEntity.ok("Delete to myCart");
		}

		@RequestMapping(value = "/submitReview", method = RequestMethod.POST)
		public String submitReview(@ModelAttribute Product product, @RequestParam("image") MultipartFile image,
				HttpServletRequest request) {

			if (!image.isEmpty()) {
				String imageName = image.getOriginalFilename();
				ServletContext context = request.getSession().getServletContext();
				String savePath = context.getRealPath("./resources/upload");
				Path path = Paths.get(savePath + "/" + imageName);
				try {
					Files.copy(image.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
					product.setImage_name(imageName);
				} catch (IOException e) {
					e.printStackTrace();
					return "error";
				}

				System.out.println(product.toString());
				ProductMapper.insertReview(product);

			
			}
			return "redirect:/";

		}
		
		
		@RequestMapping("/searchno")
	       public String searchno(@RequestParam("value") String value,
	                                   HttpSession session,Model model) {
	         
			 List<Product> List = ProductMapper.searchno(value);
			 model.addAttribute("List",List);
			 
			 System.out.println(List.toString());
	          return "prodView"; // 적절한 뷰 이름을 반환합니다.
	       }
		
		@RequestMapping("/searchAll")
	       public String searchAll(HttpSession session,Model model) {
	         List<Product> List = ProductMapper.searchAll();
			 model.addAttribute("List",List);
			 System.out.println(List.toString());
	          return "prodView"; // 적절한 뷰 이름을 반환합니다.
	       }
		
		@RequestMapping("/diaryRegist")
		public String diaryRegist(Product product, HttpSession session, HttpServletRequest request) {

		    ServletContext context = request.getSession().getServletContext();
		    System.out.println("1 : "+context);
		    String savePath = context.getRealPath("/resources/upload");
		    System.out.println("2 : "+savePath);
		    System.out.println("절대 경로: " + savePath);
		    // 파일 최대 용량크기 설정
		    int maxSize = 1024 * 1024 * 10; // 10mb
		    System.out.println("3 : "+ maxSize);
		    String enc = "UTF-8";

		    DefaultFileRenamePolicy dftrp = new DefaultFileRenamePolicy();

		    File imgFile = null;
		    
		    try {
		         MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, enc, dftrp);
		         System.out.println("4 : "+ multi.toString());
		        String diary_title = multi.getParameter("diary_title");
		        System.out.println("5 : "+diary_title);
		        String diary_content = multi.getParameter("diary_content");
		        System.out.println("6 : "+diary_content);
		        String img_name = multi.getFilesystemName("img_name");
		        System.out.println("7 : "+img_name);
		        imgFile = multi.getFile("img_name");
		        System.out.println("8 : "+imgFile);

		        product = new Product(diary_title, diary_content, img_name);
		    } catch (IOException e) {
		        e.printStackTrace();
		        System.out.println("IOException 발생: " + e.getMessage());
		    } catch (Exception e) {
		        e.printStackTrace();
		        System.out.println("일반 예외 발생: " + e.getMessage());
		    }

		    // 세션에서 로그인 한 사용자의 정보 가져오기
		    Member loginMember = (Member)session.getAttribute("loginMember");

		    // 로그인 한 사용자의 cust_id값 가져오기
		    String cust_id = loginMember.getCust_id();

		    // member에 cust_id값 넣어서 tb_prod 테이블에 데이터 추가
		    product.setCust_id(cust_id);

		 
		    ProductMapper.insertDiary(product);
		    
		    // 방금 insert 한 상품의 prod_idx 가져오기
		    Product product2 =  ProductMapper.searchdiaryIdx(product);
		    product.setDiary_idx(product2.getDiary_idx());
		    
		    // 파일 정보 DB에 저장
		    String imgExtension = FilenameUtils.getExtension(product.getImg_name());
		    long imgSize = imgFile.length();
		    String imgPath = "/resources/upload/" + product.getImg_name();
		    String imgAbsolutePath = savePath + File.separator + product.getImg_name();
		    
		    product.setImg_real_name(imgAbsolutePath);
		    product.setImg_size(imgSize);
		    product.setImg_ext(imgExtension);
		    
		    
		    // 이미지 정보를 DB에 저장
		    
		  
		    ProductMapper.insertdiaryImage(product);

		    return "Main2";
		}
		
		
		
		
		
		@RequestMapping("/goPay")
		public String goPay(Product product,Member member, HttpSession session,@RequestParam int prod_idx ,@RequestParam int prod_price ) {
			 Member loginMember = (Member)session.getAttribute("loginMember");
			 
			    System.out.println(member.getProd_price());
				System.out.println(member.getProd_idx());
				 String cust_id = loginMember.getCust_id(); 
				 String cust_addr=loginMember.getCust_addr(); 
				 String cust_name =loginMember.getCust_name();
				 String cust_phone =loginMember.getCust_phone(); 
				 System.out.println(cust_addr);
				 System.out.println(cust_name);
				 System.out.println(cust_phone);
				 member.setProd_idx(prod_idx);
				 member.setCust_id(cust_id);
				 member.setTotal_amunt(prod_price);
				 member.setPay_amount(prod_price);
				 member.setPaid_amount(prod_price);
				 member.setDelivery_addr(cust_addr);
				 member.setReceiver_name(cust_name);
				 member.setReceiver_phone(cust_phone);
				 
			
			int cnt = ProductMapper.buy(member);
			if(cnt != 0 ) {
				return "redirect:/";
			}else {
				return "diary";
			}
		}
		
}
