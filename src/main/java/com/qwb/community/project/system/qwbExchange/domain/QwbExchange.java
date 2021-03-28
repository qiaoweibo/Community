package com.qwb.community.project.system.qwbExchange.domain;

import com.qwb.community.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 社區交流表 qwb_exchange
 * 
 * @author qwb
 * @date 2019-04-23
 */
public class QwbExchange extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 用户id */
	private String name;
	/** 创建时间 */
	private String creationTime;
	/** 交流内容 */
	private String content;
	/** 状态:0.未完成，1，完成。2.无法完成 */
	private Integer state;

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
	public void setCreationTime(String creationTime) 
	{
		this.creationTime = creationTime;
	}

	public String getCreationTime() 
	{
		return creationTime;
	}
	public void setContent(String content) 
	{
		this.content = content;
	}

	public String getContent() 
	{
		return content;
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
            .append("creationTime", getCreationTime())
            .append("content", getContent())
            .append("state", getState())
            .toString();
    }
}
