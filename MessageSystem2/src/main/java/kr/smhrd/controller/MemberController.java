package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.Message;
import kr.smhrd.entity.Product;
import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.MessageMapper;
import kr.smhrd.mapper.ProductMapper;

// POJO를 찾기위해 @(어노테이션)으로 Controller라고 명시해야 함
// 어떤 패키지에서 Controller를 찾을 건지 servlet-context.xml 파일에도 명시해야 함
@Controller
public class MemberController {

	// class 안에 있는 메소드를 쓰려면 '객체생성' 필요함, interface는 객체생성도 안됨 -> but 스프링에서는 생성하는게 아니라
	// 주입받아서 씀
	@Autowired // 스프링 컨테이너에 객체가 생성되어 올라간 boardMapper 객체를 주입받아 사용하겠다
	private MemberMapper memberMapper; // DAO같은 역할인데 DAO는 커넥션 관리까지 다했다면
	@Autowired
	private MessageMapper messageMapper;
	private Member member;
	private HttpServletRequest request;
	@Autowired
	private ProductMapper ProductMapper;
	
	
	// @RequestMapping : get방식, post방식 요청을 다 받을 수 있음
	// @GetMapping : get방식 요청만 받을 수 있음
	// @PostMapping : post방식 요청만 받을 수 있음

	
	@RequestMapping("/goMain")
	public String goMain() {
		return "redirect:/";
	}
	
	@GetMapping("/")
	public String main(Model model) {
			List<Product> products = ProductMapper.selectProducts();

			model.addAttribute("product", products);
			
			List<Product> likeDiaries = ProductMapper.selectLikeDiary();

		    model.addAttribute("likeDiaries", likeDiaries);
		    
		    List<Product> topBuy = ProductMapper.selectTopBuy();
		    model.addAttribute("topBuy",topBuy);
			
			List<Product> editorPick = ProductMapper.selectEditor();
			model.addAttribute("editorPick",editorPick);
		return "Main2";
	}
	
	// 회원가입 /memberInsert
	@RequestMapping("/memberInsert")
	public String memberInsert(Member member, Model model) {
		// DB에 회원정보 삽입하기
		System.out.println(member.toString());
		
		memberMapper.memberInsert(member); // 인터페이스는 추상메소드만 존재
		model.addAttribute("email", member.getCust_email());
		return "JoinSuccess";
	}
	@RequestMapping("/memberlogin")
	public String memberlogin(Member member, HttpSession session) {
		
		 try {
	        // 로깅 문 추가
	        System.out.println("회원 로그인 요청: " + member.toString());
	        
	        // 데이터베이스에서 해당 회원 정보 가져오기
	        Member loginMember = memberMapper.memberlogin(member);
	        
	        if (loginMember != null) {
	            // 로그인 성공
	            System.out.println("로그인 성공");
	            session.setAttribute("loginMember", loginMember);

	            System.out.println("세션값 tostring : "+loginMember.toString());

	            return "Main";
	        } else {
	            // 로그인 실패
	            System.out.println("로그인 실패");
	            return "login_01";
	        }
	    } catch (Exception e) {
	        // 예외 처리
	        System.err.println("로그인 중 예외 발생: " + e.getMessage());
	        e.printStackTrace(); // 예외 정보를 콘솔에 출력
	        return "error-page"; // 적절한 에러 페이지로 리다이렉트 또는 포워딩
	    }
	}
	
	// 로그인 /memberSelect
	@PostMapping("/memberSelect1")
	public String memberSelect1(Member member, HttpSession session) { // email, pw
		Member loginMember = memberMapper.memberSelect(member);
		List<Message> msgList = messageMapper.messageList(member.getCust_email());
		System.out.println("memCon" + msgList.size());
		session.setAttribute("loginMember", loginMember);
		session.setAttribute("msgList", msgList);
		return "Main";
	}

	// 로그아웃 /logoutMember
	@RequestMapping("/goLogout")
	public String goLogout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/";
	}
	
	
	

	// 회원수정 페이지로 이동 /goUpdatePage
	@RequestMapping("/goUpdatePage")
	public String goUpdatePage() {
		return "UpdateMember";
	}

	// 회원 수정 기능 /updateMember
	@RequestMapping("/updateMember")
	public String updateMember(Member member, HttpSession session) {
		// 수정 성공 시 -> Main.jsp
		// 수정 실패 시 -> UpdateMember.jsp
		System.out.println(member.toString());
	
		int cnt = memberMapper.updateMember(member);
		System.out.println(member.toString());
		session.setAttribute("loginMember", member);
		if (cnt > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		return "Main";
	}

	// 회원정보 보는 페이지로 이동 + DB에 있는 회원 조회 /showMember
	@RequestMapping("/goShowMember")
	public String showMember(Model model) {
		List<Member> list = memberMapper.showMember();
		model.addAttribute("list", list);
		return "ShowMember";
	}

	// 회원삭제 /deleteMember
	@RequestMapping("/deleteMember") // deleteMember?email=~~~
	public String deleteMember(@RequestParam("email") String email) {
		memberMapper.memberMapper(email);
		return "redirect:/goShowMember";
	}
//  판매자 등록
	@RequestMapping("/insertSeller")
	public String insertSeller(Member member, HttpSession session) {
//		세션에서 로그인 한 사용자의 정보 가져오기
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println("\n"+loginMember.toString() +"\n");
		
//		로그인 한 사용자의 cust_id값 가져오기
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		
//		member에 cust_id값 넣어서 tb_seller 테이블에 데이터 추가
		member.setCust_id(cust_id);
//		member값 확인
		System.out.println(member.toString());
	    memberMapper.sellerInsert(member);
	    memberMapper.sellerUpdate(member);
	    return "Main";
	}
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "login_01";
	}
	
	@RequestMapping("/goJoin")
	public String goJoin() {
		return "join_02";
	}
	
	@RequestMapping("/goSeller")
	public String goSeller() {
		
		return "sellerRegist";
	}
	@PostMapping("/searchLike")
	@ResponseBody
	public ResponseEntity<String> addToWishlist(
	     @RequestParam int prod_idx,Member member, HttpSession session
	    
	) {
	    // TODO: 적절한 처리 수행
	   
	    Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println("\n"+loginMember.toString() +"\n");
		
//		로그인 한 사용자의 cust_id값 가져오기
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		member.setCust_id(cust_id);
		member.setProd_idx(prod_idx);
		System.out.println(prod_idx);
		
		
		int cnt = memberMapper.searchLike(member);
		if(cnt == 0) {
			
			memberMapper.goLike(member);
		}else {
			memberMapper.removeLike(member);
		}
	   
	    
	    return ResponseEntity.ok("Added to wishlist");
	}
	
	
	@RequestMapping("/gomyPage")
	public String gomyPage(Member member, HttpSession session,Model model) {
		MultipartRequest multi = null;
		Member loginMember = (Member)session.getAttribute("loginMember");
		String cust_id = loginMember.getCust_id();
		List<Member> likeList = memberMapper.likeList(cust_id);
		model.addAttribute("likeList",likeList);
		 
		List<Product> prodList = ProductMapper.selectProdlist(cust_id);
		model.addAttribute("prodList",prodList);
		
		
		List<Member> reviewList = memberMapper.reviewList(cust_id);
		model.addAttribute("reviewList",reviewList);
		System.out.println(model.toString());
		
		List<Member> searchQna = memberMapper.searchQna(cust_id);
		model.addAttribute("searchQna",searchQna);
		System.out.println(model.toString());
		
		if(loginMember.getCust_role().equals("S")) {
			List<Member> sellList = memberMapper.searchMysell(cust_id);
			model.addAttribute("sellList",sellList);
			
			List<Member> diaryList = memberMapper.searchDia(cust_id);
			model.addAttribute("diaryList",diaryList);
			
			List<Member> qnaList = memberMapper.qnaList(cust_id);
			model.addAttribute("qnaList",qnaList);
			
			return "sellerMyPage";
		}
		
		
		  return "myPage";
		
	}
	
	@RequestMapping("/searchLikeList")
	@ResponseBody
	public boolean deleteLikeItem(
	     @RequestParam int prod_idx,Member member, HttpSession session
	    
	) {
	    // TODO: 적절한 처리 수행
	   
	    Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println("\n"+loginMember.toString() +"\n");
		
//		로그인 한 사용자의 cust_id값 가져오기
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		member.setCust_id(cust_id);
		member.setProd_idx(prod_idx);
		System.out.println(prod_idx);
		memberMapper.removeLike(member);
	
	    
	    return true;
	}
	
	
	@RequestMapping("/reviewDelete")
	@ResponseBody
	public boolean reviewDelete(@RequestParam int prod_idx,Member member, HttpSession session) {
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println("\n"+loginMember.toString() +"\n");
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		member.setCust_id(cust_id);
		member.setProd_idx(prod_idx);
		System.out.println(prod_idx);
		memberMapper.reviewDelete(member);
		return true;
	}
	
	@RequestMapping("/qnaDelete")
	@ResponseBody
	public boolean qnaDelete(@RequestParam int prod_idx,Member member, HttpSession session) {
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		member.setCust_id(cust_id);
		member.setProd_idx(prod_idx);
		System.out.println(prod_idx);
		memberMapper.qnaDelete(member);
		return true;
	}
	
	
	
	@RequestMapping("/updateAnswer")
	@ResponseBody
	public boolean updateAnswer(@RequestParam String answer, @RequestParam int prod_idx,@RequestParam int qna_idx,Member member, HttpSession session) {
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		String cust_id = loginMember.getCust_id();
		System.out.println("cust_id값 확인 : "+ cust_id);
		System.out.println("수정할 답!! !:  "+answer);
		System.out.println("prod 아이디 값: " +prod_idx);
		member.setAnswer(answer);
		member.setProd_idx(prod_idx);
		member.setQna_idx(qna_idx);
		System.out.println(prod_idx);
		memberMapper.updateAnswer(member);
		return true;
	}
	
	@RequestMapping("/godiary")
	public String godiary(Model model,HttpSession session) {
		List<Member> diaryList =memberMapper.diaryList();
		model.addAttribute("diaryList",diaryList);
		System.out.println(model);
		return "diary";
	}
	
}
