package com.qwb.community.project.system.qwbHouseRent.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qwb.community.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 租房表 qwb_house_rent
 * 

 */
public class QwbHouseRent extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 发布人姓名 */
	private String name;
	/** 租房信息 */
	private String content;
	/** 发布时间 */
	private Date time;
	/** 发布人的电话 */
	private String phone;
	/** 发布人的邮箱 */
	private String email;
	/** 户型(3室1厅1厨1卫：120平） */
	private String roomType;

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
	public void setContent(String content) 
	{
		this.content = content;
	}

	public String getContent() 
	{
		return content;
	}
	public void setTime(Date time) 
	{
		this.time = time;
	}

	public Date getTime() 
	{
		return time;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getEmail() 
	{
		return email;
	}
	public void setRoomType(String roomType) 
	{
		this.roomType = roomType;
	}

	public String getRoomType() 
	{
		return roomType;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("content", getContent())
            .append("time", getTime())
            .append("remark", getRemark())
            .append("phone", getPhone())
            .append("email", getEmail())
            .append("roomType", getRoomType())
            .toString();
    }
}
