package cn.bdqn.domain;

/*商品类*/
public class Product {

    private String  pId;    //商品id

    private String pZname;  //商品名称

    private String pPrice;  //价格

    private String pYue2;   //一次订多少几月

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getpZname() {
        return pZname;
    }

    public void setpZname(String pZname) {
        this.pZname = pZname;
    }

    public String getpPrice() {
        return pPrice;
    }

    public void setpPrice(String pPrice) {
        this.pPrice = pPrice;
    }

    public String getpYue2() {
        return pYue2;
    }

    public void setpYue2(String pYue2) {
        this.pYue2 = pYue2;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pId=" + pId +
                ", pZname='" + pZname + '\'' +
                ", pPrice='" + pPrice + '\'' +
                ", pYue2='" + pYue2 + '\'' +
                '}';
    }

}
