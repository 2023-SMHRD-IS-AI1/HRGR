package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Member;
import kr.smhrd.entity.Message;
import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.MessageMapper;

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

	// @RequestMapping : get방식, post방식 요청을 다 받을 수 있음
	// @GetMapping : get방식 요청만 받을 수 있음
	// @PostMapping : post방식 요청만 받을 수 있음

	
	@RequestMapping("/goMain")
	public String goMain() {
		return "Main";
	}
	
	@GetMapping("/")
	public String main() {
		return "Main";

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
	@PostMapping("/memberlogin")
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
	            return "login";
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
		int cnt = memberMapper.updateMember(member);

		if (cnt > 0) {
			session.setAttribute("loginMember", member);
			return "Main";
		} else {
			return "UpdateMember";
		}

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
	    
	    return "Main";
	}
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping("/goJoin")
	public String goJoin() {
		return "join_01";
	}
	
	@RequestMapping("/goSeller")
	public String goSeller() {
		
		return "sellerAccount";
	}
	
	
	

}
