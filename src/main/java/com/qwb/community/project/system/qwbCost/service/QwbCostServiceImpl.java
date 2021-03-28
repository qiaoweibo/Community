package com.qwb.community.project.system.qwbCost.service;

import java.util.Date;
import java.util.List;

import com.qwb.community.project.system.user.domain.User;
import com.qwb.community.common.exception.BusinessException;
import com.qwb.community.common.utils.StringUtils;
import com.qwb.community.common.utils.security.ShiroUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.project.system.qwbCost.mapper.QwbCostMapper;
import com.qwb.community.project.system.qwbCost.domain.QwbCost;
import com.qwb.community.common.utils.text.Convert;

/**
 * 費用 服务层实现
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Service
public class QwbCostServiceImpl implements IQwbCostService 
{
	private static final Logger log = LoggerFactory.getLogger(QwbCostServiceImpl.class);
	@Autowired
	private QwbCostMapper qwbCostMapper;

	/**
     * 查询費用信息
     * 
     * @param id 費用ID
     * @return 費用信息
     */
    @Override
	public QwbCost selectQwbCostById(Integer id)
	{
	    return qwbCostMapper.selectQwbCostById(id);
	}
	
	/**
     * 查询費用列表
     * 
     * @param qwbCost 費用信息
     * @return 費用集合
     */
	@Override
	public List<QwbCost> selectQwbCostList(QwbCost qwbCost)
	{
	    return qwbCostMapper.selectQwbCostList(qwbCost);
	}
	
    /**
     * 新增費用
     * 
     * @param qwbCost 費用信息
     * @return 结果
     */
	@Override
	public int insertQwbCost(QwbCost qwbCost)
	{
	    return qwbCostMapper.insertQwbCost(qwbCost);
	}
	
	/**
     * 修改費用
     * 
     * @param qwbCost 費用信息
     * @return 结果
     */
	@Override
	public int updateQwbCost(QwbCost qwbCost)
	{
	    return qwbCostMapper.updateQwbCost(qwbCost);
	}

	/**
     * 删除費用对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbCostByIds(String ids)
	{
		return qwbCostMapper.deleteQwbCostByIds(Convert.toStrArray(ids));
	}

	@Override
	public String importCost(List<QwbCost> qwbCostList, Boolean isUpdateSupport) {
		if (StringUtils.isNull(qwbCostList) || qwbCostList.size() == 0)
		{
			throw new BusinessException("导入用户数据不能为空！");
		}
		int successNum = 0;
		int failureNum = 0;
		StringBuilder successMsg = new StringBuilder();
		StringBuilder failureMsg = new StringBuilder();
		User currentUser=ShiroUtils.getSysUser();
		for (QwbCost qwbCost : qwbCostList)
		{
			qwbCost.setCreateDate(new Date());
			qwbCost.setState(0);
			try
			{
				// 验证是否存在这个用户
//				QwbCost u = qwbCostMapper.selectUserByLoginName(user.getLoginName());
//				if (StringUtils.isNull(u))
//				{
//					user.setPassword(password);
//					user.setCreateBy(operName);
					this.insertQwbCost(qwbCost);
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
