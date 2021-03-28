package com.qwb.community.project.system.qwbCarApply.domain;

import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qwb.community.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 车位申请表 qwb_car_apply
 * 
 * @author qwb
 * @date 2019-04-28
 */
public class QwbCarApply extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 申请人姓名 */
	private String name;
	/** 申请人的电话号码 */
	private String phone;
	/** 申请时间 */
	private Date applyTime;
	/** 状态 */
	private Integer state;
	/** 批准时间 */
	private Date agreeTime;

	/** 车位id（用于关联操作） */
	private Integer cId;

	private String room;

	private Integer rentTime;

	private String agreeName;

/*若想实现在申请视图下可以看到对应的车位的信息，则需要加上下面的车位对象	*/
	/*初步想法申请一个车位就在用户的车位列表视图中消失(先到先得,避免服务人员暗箱操作),
	最后如果有时间的话，可以向学校选课那样，加个抽签之类的算法*/
	private QwbCarRent qwbCarRent;

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public Integer getRentTime() {
		return rentTime;
	}

	public void setRentTime(Integer rentTime) {
		this.rentTime = rentTime;
	}

	public String getAgreeName() {
		return agreeName;
	}

	public void setAgreeName(String agreeName) {
		this.agreeName = agreeName;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public QwbCarRent getQwbCarRent() {
		return qwbCarRent;
	}

	public void setQwbCarRent(QwbCarRent qwbCarRent) {
		this.qwbCarRent = qwbCarRent;
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
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
	}
	public void setApplyTime(Date applyTime) 
	{
		this.applyTime = applyTime;
	}

	public Date getApplyTime() 
	{
		return applyTime;
	}
	public void setState(Integer state) 
	{
		this.state = state;
	}

	public Integer getState() 
	{
		return state;
	}
	public void setAgreeTime(Date agreeTime) 
	{
		this.agreeTime = agreeTime;
	}

	public Date getAgreeTime() 
	{
		return agreeTime;
	}
	public void setCId(Integer cId) 
	{
		this.cId = cId;
	}

	public Integer getCId() 
	{
		return cId;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("phone", getPhone())
            .append("applyTime", getApplyTime())
            .append("state", getState())
            .append("agreeTime", getAgreeTime())
            .append("cId", getCId())
            .toString();
    }
}
