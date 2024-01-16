package kr.smhrd.entity;


public class WishlistItemController {
    private String prodName;
    private int prodStock;
    private double prodPrice;
    private int prodRatings;
    

    // 생성자, 게터, 세터 등 필요한 메서드 추가

    @Override
    public String toString() {
        return "WishlistItem{" +
                "prodName='" + prodName + '\'' +
                ", prodStock=" + prodStock +
                ", prodPrice=" + prodPrice +
                ", prodRatings=" + prodRatings +
                '}';
    }
}