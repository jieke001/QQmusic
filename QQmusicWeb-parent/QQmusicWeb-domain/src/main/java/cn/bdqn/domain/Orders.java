package cn.bdqn.domain;

import java.util.Date;

/*订单表*/
public class Orders {

    private String id;          /*订单id*/

    private String orderNum;    /*订单号*/

    private String orderStatus; /*订单状态   10：待付款 20：已付款*/

    private String orderAmount; /*订单金额*/

    private String paidAmount;  /*实际支付金额*/

    private String productId;   /*产品表外键ID*/

    private int buyCounts;      /*产品购买的个数*/

    private Date createTime;    /*订单创建时间*/

    private Date paidTime;      /*支付时间*/

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(String orderAmount) {
        this.orderAmount = orderAmount;
    }

    public String getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(String paidAmount) {
        this.paidAmount = paidAmount;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getBuyCounts() {
        return buyCounts;
    }

    public void setBuyCounts(int buyCounts) {
        this.buyCounts = buyCounts;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getPaidTime() {
        return paidTime;
    }

    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id='" + id + '\'' +
                ", orderNum='" + orderNum + '\'' +
                ", orderStatus='" + orderStatus + '\'' +
                ", orderAmount='" + orderAmount + '\'' +
                ", paidAmount='" + paidAmount + '\'' +
                ", productId='" + productId + '\'' +
                ", buyCounts=" + buyCounts +
                ", createTime=" + createTime +
                ", paidTime=" + paidTime +
                '}';
    }

}
