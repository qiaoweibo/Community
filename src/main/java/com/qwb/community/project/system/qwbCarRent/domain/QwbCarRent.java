package com.qwb.community.project.system.qwbCarRent.domain;

import com.qwb.community.framework.aspectj.lang.annotation.Excel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qwb.community.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 车位表 qwb_car_rent

 */
public class QwbCarRent extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 车位号 */
	@Excel(name = "车位号")
	private Integer carId;
	/** 位置 */
	@Excel(name = "位置")
	private String space;
	/** 车位长度 */
	@Excel(name = "车位长度")
	private Double length;

	/** 车位宽度 */
	@Excel(name = "车位宽度")
	private Double width;
	/** 面积 */
	@Excel(name = "面积")
	private Double area;
	/** 车位租用的最大年限(年) */
	@Excel(name = "最大租期(年)")
	private Integer ageLimit;
	/** 租金（年） */
	@Excel(name = "租金(年)")
	private Double rentMoney;
	/** 发布人的id */
	private Integer publishId;
	/** 发布人姓名 */
	@Excel(name = "发布人")
	private String pName;
	/** 发布人的电话号码 */
	@Excel(name = "电话号码")
	private String pNumber;
	/** 发布时间 */
	private Date pTime;


	/** 状态：（包括：已申请 未申请？） */
	private Integer state;

	/** 状态2：（包括：未租用；已租用；；续租？） */
	private Integer describe;



	public Integer getDescribe() {
		return describe;
	}

	public void setDescribe(Integer describe) {
		this.describe = describe;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setCarId(Integer carId) 
	{
		this.carId = carId;
	}

	public Integer getCarId() 
	{
		return carId;
	}
	public void setSpace(String space) 
	{
		this.space = space;
	}

	public String getSpace() 
	{
		return space;
	}
	public void setLength(Double length) 
	{
		this.length = length;
	}

	public Double getLength() 
	{
		return length;
	}
	public void setWidth(Double width) 
	{
		this.width = width;
	}

	public Double getWidth() 
	{
		return width;
	}
	public void setArea(Double area) 
	{
		this.area = area;
	}

	public Double getArea() 
	{
		return area;
	}
	public void setAgeLimit(Integer ageLimit) 
	{
		this.ageLimit = ageLimit;
	}

	public Integer getAgeLimit() 
	{
		return ageLimit;
	}
	public void setRentMoney(Double rentMoney) 
	{
		this.rentMoney = rentMoney;
	}

	public Double getRentMoney() 
	{
		return rentMoney;
	}
	public void setPublishId(Integer publishId) 
	{
		this.publishId = publishId;
	}

	public Integer getPublishId() 
	{
		return publishId;
	}
	public void setPName(String pName) 
	{
		this.pName = pName;
	}

	public String getPName() 
	{
		return pName;
	}
	public void setPNumber(String pNumber) 
	{
		this.pNumber = pNumber;
	}

	public String getPNumber() 
	{
		return pNumber;
	}
	public void setPTime(Date pTime) 
	{
		this.pTime = pTime;
	}

	public Date getPTime() 
	{
		return pTime;
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
            .append("carId", getCarId())
            .append("space", getSpace())
            .append("length", getLength())
            .append("width", getWidth())
            .append("area", getArea())
            .append("ageLimit", getAgeLimit())
            .append("rentMoney", getRentMoney())
            .append("publishId", getPublishId())
            .append("pName", getPName())
            .append("pNumber", getPNumber())
            .append("pTime", getPTime())
            .append("state", getState())
            .toString();
    }
}
