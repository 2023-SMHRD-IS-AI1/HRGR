// RankingController.java
package kr.smhrd.controller;

import kr.smhrd.entity.RankingData;
import kr.smhrd.mapper.RankingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
public class RankingController {

    @Autowired
    private RankingMapper rankingMapper;

    @RequestMapping("/getData")
    public String getData(Model model) {
        List<RankingData> dataList = rankingMapper.selectranking();

        // 데이터를 캡슐화하여 모델에 추가
        model.addAttribute("dataList", dataList);
        
        System.out.println("test");
//        System.out.println(dataList.toString());
        
        // 결과를 표시할 뷰 페이지 반환
        return "Main";
    }
}


