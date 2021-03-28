package com.qwb.community.project.system.qwbRepair.domain;

import com.qwb.community.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 維修表 qwb_repair
 *
 */
public class QwbRepair extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 用户id */
	private String name;
	/** 创建时间 */
	private Date creationTime;
	/** 维修内容 */
	private String content;

	/*维修图片*/
	private String repairPicture;

	/** 完成时间 */
	private Date completeTime;
	/** 维修结果 */
	private String remarks;
	/** 状态:0.未完成，1，完成。2.无法完成 */
	private Integer state;


	private String repairName;

	private String repairPhone;

	/** 需要报修住户的房间号 */
	private String room;

	public String getRepairName() {
		return repairName;
	}

	public void setRepairName(String repairName) {
		this.repairName = repairName;
	}

	public String getRepairPhone() {
		return repairPhone;
	}

	public void setRepairPhone(String repairPhone) {
		this.repairPhone = repairPhone;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Date getCompleteTime() {
		return completeTime;
	}

	public void setCompleteTime(Date completeTime) {
		this.completeTime = completeTime;
	}

	public String getRepairPicture() {
		return repairPicture;
	}

	public void setRepairPicture(String repairPicture) {
		this.repairPicture = repairPicture;
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

	public void setContent(String content) 
	{
		this.content = content;
	}

	public String getContent() 
	{
		return content;
	}

	public void setRemarks(String remarks) 
	{
		this.remarks = remarks;
	}

	public String getRemarks() 
	{
		return remarks;
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
            .append("completeTime", getCompleteTime())
            .append("remarks", getRemarks())
            .append("state", getState())
            .toString();
    }
}
