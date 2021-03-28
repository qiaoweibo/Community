package com.qwb.community.project.system.qwbCost.domain;

import com.qwb.community.framework.aspectj.lang.annotation.Excel;
import com.qwb.community.framework.web.domain.BaseEntity;
import com.qwb.community.project.system.user.domain.User;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 費用表 qwb_cost

 */
public class QwbCost extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 用户id */
	@Excel(name = "姓名")
	private String name;


	////////////////////////////
	/** 房间号用于实现和住户信息表的关联操作 */
	@Excel(name = "房间号")
	private String room;


	/** 创建日期 */
	private Date createDate;
	/** 电费 */
	@Excel(name = "电费")
	private Double electricityCosts;
	/** 水费 */
	@Excel(name = "水费")
	private Double waterCosts;
	/** 燃气费 */
	@Excel(name = "燃气费")
	private Double gasCosts;
	/** 物业费 */
	@Excel(name = "物业费")
	private Double propertyCosts;

	/** 费用总计 */
	@Excel(name = "总计")
	private Double total;



	/** 缴费时间 */
	private Date paymentTime;



	/** 状态处理  0：未处理   1：已处理 */
	private Integer state;


	/** 查看情况 0：未查看  1已查看*/
	private Integer check;

	public Integer getCheck() {
		return check;
	}

	public void setCheck(Integer check) {
		this.check = check;
	}



	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}
	////////////////////////////

	public Date getPaymentTime() {
		return paymentTime;
	}

	public void setPaymentTime(Date paymentTime) {
		this.paymentTime = paymentTime;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setName(String name) 
	{
		this.name = name;
	}

	public String getName() 
	{
		return name;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	/*public void setCreateDate(String createDate)
        {
            this.createDate = createDate;
        }

        public String getCreateDate()
        {
            return createDate;
        }*/
	public void setElectricityCosts(Double electricityCosts) 
	{
		this.electricityCosts = electricityCosts;
	}

	public Double getElectricityCosts() 
	{
		return electricityCosts;
	}
	public void setWaterCosts(Double waterCosts) 
	{
		this.waterCosts = waterCosts;
	}

	public Double getWaterCosts() 
	{
		return waterCosts;
	}
	public void setGasCosts(Double gasCosts) 
	{
		this.gasCosts = gasCosts;
	}

	public Double getGasCosts() 
	{
		return gasCosts;
	}
	public void setPropertyCosts(Double propertyCosts) 
	{
		this.propertyCosts = propertyCosts;
	}

	public Double getPropertyCosts() 
	{
		return propertyCosts;
	}

	public void setState(Integer state) 
	{
		this.state = state;
	}

	public Integer getState() 
	{
		return state;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("createDate", getCreateDate())
            .append("electricityCosts", getElectricityCosts())
            .append("waterCosts", getWaterCosts())
            .append("gasCosts", getGasCosts())
            .append("propertyCosts", getPropertyCosts())
            .append("paymentTime", getPaymentTime())
            .append("state", getState())
            .toString();
    }
}
