package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Member;

@Mapper
public interface BoardMapper {

	public int insertBoard(Board board);

	public List<Board> boardList();

	public Board boardContent(int idx);

	public void boardDelete(int idx);

	public void selectProdlist(String cust_id);
	
	
	
}
