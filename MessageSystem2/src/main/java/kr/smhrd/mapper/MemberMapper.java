package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.ui.Model;

import kr.smhrd.entity.Member;
import lombok.NonNull;

// 결국은 MemberMapper라는 클래스도 Spring Container로 올라가게됨
// mapper파일임을 알려줘야함
@Mapper // 어떤 패키지에 있는 mapper파일을 읽을건지?? -> root-context.xml
public interface MemberMapper { // 틀, SqlSessionFactoryBean이 MemberMapper를 implement 해서 사용

	public void memberInsert(Member member);

	public Member memberSelect(Member member);

	@Select("select * from tb_cust where cust_phone=#{cust_phone}")
	public Member phoneCheck(String cust_phone);

	public int updateMember(Member member);

	public List<Member> showMember();

	public void memberMapper(String email);

	@Select("select * from tb_cust where cust_phone=#{cust_phone} and cust_email=#{cust_email}")
	public Member loginCheck(Member member);

	public Member memberlogin(Member member);

	public void sellerInsert(Member member);

	
	public Member loginmember(Member member);

	public void sellerUpdate(Member member);
	
	public int goLike(Member member);
	

	public void removeLike(Member member);
	
	public int searchLike(Member member);

	public List<Member> likeList(String cust_id);
	
	public List<Member> likeList();
	
	
	public List<Member> reviewList(String cust_id);

	public void reviewDelete(Member member);

	public List<Member> searchQna(String cust_id);

	public void qnaDelete(Member member);

	public List<Member> searchMysell(String cust_id);

	public List<Member> searchDia(String cust_id);

	public List<Member> qnaList(String cust_id);

	public void updateAnswer(Member member);

	public List<Member> diaryList();

	public List<Member> mydiaryList(String cust_id);

	public Member kakaoLgin(String cust_phone);

	public static boolean checkPhoneNumber(String phoneNumber) {
		// TODO Auto-generated method stub
		return false;
	}

	public int insertQna(Member member);
	
	
	public List<Member> goQna(int prod_idx);


	

	

	
	
	
	

	
}

