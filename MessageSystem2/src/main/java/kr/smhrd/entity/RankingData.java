package kr.smhrd.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@AllArgsConstructor
@ToString
public class RankingData {
    private String datalabAgri;
    private String datalabAqua;
    private int rankingIdx;
    private String nongla;

    public void selectRanking(String datalabAgri, String datalabAqua, int rankingIdx, String nongla) {
        this.datalabAgri = datalabAgri;
        this.datalabAqua = datalabAqua;
        this.rankingIdx = rankingIdx;
        this.nongla = nongla;
    }

   
}
