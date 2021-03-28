package com.qwb.community.project.system.qwbCarApply.service;

import java.util.List;

import com.qwb.community.project.system.qwbCarApply.domain.QwbCarApply;
import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
import com.qwb.community.project.system.qwbCarRent.mapper.QwbCarRentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.project.system.qwbCarApply.mapper.QwbCarApplyMapper;
import com.qwb.community.common.utils.text.Convert;

/**
 * 车位申请 服务层实现
 * 
 * @author qwb
 * @date 2019-04-28
 */
@Service
public class QwbCarApplyServiceImpl implements IQwbCarApplyService 
{
	@Autowired
	private QwbCarApplyMapper qwbCarApplyMapper;
	@Autowired
	private QwbCarRentMapper qwbCarRentMapper;


	/**
     * 查询车位申请信息
     * 
     * @param id 车位申请ID
     * @return 车位申请信息
     */
    @Override
	public QwbCarApply selectQwbCarApplyById(Integer id)
	{
	    return qwbCarApplyMapper.selectQwbCarApplyById(id);
	}
	
	/**
     * 查询车位申请列表
     * 
     * @param qwbCarApply 车位申请信息
     * @return 车位申请集合
     */
	@Override
	public List<QwbCarApply> selectQwbCarApplyList(QwbCarApply qwbCarApply)
	{
	    return qwbCarApplyMapper.selectQwbCarApplyList(qwbCarApply);
	}
	
    /**
     * 新增车位申请
     * 
     * @param qwbCarApply 车位申请信息
     * @return 结果
     */
	@Override
	public int insertQwbCarApply(QwbCarApply qwbCarApply)
	{
	    return qwbCarApplyMapper.insertQwbCarApply(qwbCarApply);
	}
	
	/**
     * 修改车位申请
     * 
     * @param qwbCarApply 车位申请信息
     * @return 结果
     */
	@Override
	public int updateQwbCarApply(QwbCarApply qwbCarApply)
	{
	    return qwbCarApplyMapper.updateQwbCarApply(qwbCarApply);
	}

	/**
     * 删除车位申请对象
     * 
 qwbCarApplyController->指向用户的申请列表
qwbCarListController->指向服务人员的申请列表
	 使用两个Controller就不用分权限判断了
	 他们所调用的service和serviceImpl都是一样的

     */
	@Override
	public int deleteQwbCarApplyByIds(String ids)
	{
/////////////////////////////////////////
		String[] idsTmp=Convert.toStrArray(ids);
		for(int i=0;i<idsTmp.length;i++){
			QwbCarApply tem=qwbCarApplyMapper.selectQwbCarApplyById(Integer.valueOf(idsTmp[i]));
			QwbCarRent qwbCarRent=new QwbCarRent();
			qwbCarRent.setState(0);
			qwbCarRent.setId(tem.getCId());
			System.out.println(tem.getCId());
			qwbCarRentMapper.updateQwbCarRent(qwbCarRent);
		}
/////////////////////////////////////////
		return qwbCarApplyMapper.deleteQwbCarApplyByIds(Convert.toStrArray(ids));
	}
	
}
