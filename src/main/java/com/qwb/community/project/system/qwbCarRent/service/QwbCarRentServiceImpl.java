package com.qwb.community.project.system.qwbCarRent.service;

import java.util.Date;
import java.util.List;

import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
import com.qwb.community.project.system.qwbCarRent.mapper.QwbCarRentMapper;
import com.qwb.community.common.exception.BusinessException;
import com.qwb.community.common.utils.StringUtils;
import com.qwb.community.common.utils.security.ShiroUtils;
import com.qwb.community.project.system.user.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.common.utils.text.Convert;

/**
 * 车位 服务层实现
 * 
 * @author qwb
 * @date 2019-04-28
 */
@Service
public class QwbCarRentServiceImpl implements IQwbCarRentService 
{
	private static final Logger log = LoggerFactory.getLogger(QwbCarRentServiceImpl.class);
	@Autowired
	private QwbCarRentMapper qwbCarRentMapper;

	/**
     * 查询车位信息
     * 
     * @param id 车位ID
     * @return 车位信息
     */
    @Override
	public QwbCarRent selectQwbCarRentById(Integer id)
	{
	    return qwbCarRentMapper.selectQwbCarRentById(id);
	}
	
	/**
     * 查询车位列表
     * 
     * @param qwbCarRent 车位信息
     * @return 车位集合
     */
	@Override
	public List<QwbCarRent> selectQwbCarRentList(QwbCarRent qwbCarRent)
	{
	    return qwbCarRentMapper.selectQwbCarRentList(qwbCarRent);
	}
	
    /**
     * 新增车位
     * 
     * @param qwbCarRent 车位信息
     * @return 结果
     */
	@Override
	public int insertQwbCarRent(QwbCarRent qwbCarRent)
	{
	    return qwbCarRentMapper.insertQwbCarRent(qwbCarRent);
	}
	
	/**
     * 修改车位
     * 
     * @param qwbCarRent 车位信息
     * @return 结果
     */
	@Override
	public int updateQwbCarRent(QwbCarRent qwbCarRent)
	{
	    return qwbCarRentMapper.updateQwbCarRent(qwbCarRent);
	}

	/**
     * 删除车位对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbCarRentByIds(String ids)
	{
		return qwbCarRentMapper.deleteQwbCarRentByIds(Convert.toStrArray(ids));
	}


	@Override
	public String importCarRent(List<QwbCarRent> qwbCarRentList, Boolean isUpdateSupport) {
		if (StringUtils.isNull(qwbCarRentList) || qwbCarRentList.size() == 0)
		{
			throw new BusinessException("导入用户数据不能为空！");
		}
		int successNum = 0;
		int failureNum = 0;
		StringBuilder successMsg = new StringBuilder();
		StringBuilder failureMsg = new StringBuilder();
		User currentUser= ShiroUtils.getSysUser();
		for (QwbCarRent qwbCarRent : qwbCarRentList)
		{
			qwbCarRent.setPTime(new Date());
			qwbCarRent.setState(0);
			try
			{
				// 验证是否存在这个用户
//				QwbCost u = qwbCostMapper.selectUserByLoginName(user.getLoginName());
//				if (StringUtils.isNull(u))
//				{
//					user.setPassword(password);
//					user.setCreateBy(operName);
				this.insertQwbCarRent(qwbCarRent);
//					successNum++;
//					successMsg.append("<br/>" + successNum + "、账号 " + user.getLoginName() + " 导入成功");
//				}
//				else if (isUpdateSupport)
//				{
//					qwbCost.setUpdateBy(currentUser.getUserName());
//					this.updateQwbCost(qwbCost);
//					successNum++;
//					successMsg.append("<br/>" + successNum + "、账号 " + user.getLoginName() + " 更新成功");
//				}
//				else
//				{
//					failureNum++;
//					failureMsg.append("<br/>" + failureNum + "、账号 " + qwbCost.getLoginName() + " 已存在");
//				}
			}
			catch (Exception e)
			{
				failureNum++;
				String msg = "<br/>" + failureNum + " 导入失败：";
				failureMsg.append(msg + e.getMessage());
				log.error(msg, e);
			}
		}
		if (failureNum > 0)
		{
			failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
			throw new BusinessException(failureMsg.toString());
		}
		else
		{
			successMsg.insert(0, "恭喜您，数据已全部导入成功！，数据如下：");
/*
			successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
*/
		}
		return successMsg.toString();
	}
	
}
