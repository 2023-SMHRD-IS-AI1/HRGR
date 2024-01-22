// RankingMapper.java
package kr.smhrd.mapper;

import kr.smhrd.entity.RankingData;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
@Mapper 
public interface RankingMapper {

	public List<RankingData> selectranking();
}

