package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Board;

import org.springframework.ui.Model;


import lombok.NonNull;
@Mapper
public interface BoardMapper extends MemberMapper {

	public int insertBoard(Board board);

	public List<Board> boardList();

	public Board boardContent(int idx);

	public void boardDelete(int idx);

	public void selectProdlist(String cust_id);
	
	public List<Board> searchReview(String cust_id);

	
	

	
}
