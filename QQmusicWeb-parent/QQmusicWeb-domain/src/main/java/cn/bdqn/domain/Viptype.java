package cn.bdqn.domain;

import java.math.BigDecimal;

public class Viptype {
    private Integer vId;

    private String vName;

    private Integer vTime;

    private BigDecimal vPrice;

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName == null ? null : vName.trim();
    }

    public Integer getvTime() {
        return vTime;
    }

    public void setvTime(Integer vTime) {
        this.vTime = vTime;
    }

    public BigDecimal getvPrice() {
        return vPrice;
    }

    public void setvPrice(BigDecimal vPrice) {
        this.vPrice = vPrice;
    }
}