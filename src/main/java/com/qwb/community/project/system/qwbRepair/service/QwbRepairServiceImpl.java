package com.qwb.community.project.system.qwbRepair.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.project.system.qwbRepair.mapper.QwbRepairMapper;
import com.qwb.community.project.system.qwbRepair.domain.QwbRepair;
import com.qwb.community.common.utils.text.Convert;

/**
 * 維修 服务层实现
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Service
public class QwbRepairServiceImpl implements IQwbRepairService 
{
	@Autowired
	private QwbRepairMapper qwbRepairMapper;

	/**
     * 查询維修信息
     * 
     * @param id 維修ID
     * @return 維修信息
     */
    @Override
	public QwbRepair selectQwbRepairById(Integer id)
	{
	    return qwbRepairMapper.selectQwbRepairById(id);
	}
	
	/**
     * 查询維修列表
     * 
     * @param qwbRepair 維修信息
     * @return 維修集合
     */
	@Override
	public List<QwbRepair> selectQwbRepairList(QwbRepair qwbRepair)
	{
	    return qwbRepairMapper.selectQwbRepairList(qwbRepair);
	}
	
    /**
     * 新增維修
     * 
     * @param qwbRepair 維修信息
     * @return 结果
     */
	@Override
	public int insertQwbRepair(QwbRepair qwbRepair)
	{
	    return qwbRepairMapper.insertQwbRepair(qwbRepair);
	}
	
	/**
     * 修改維修
     * 
     * @param qwbRepair 維修信息
     * @return 结果
     */
	@Override
	public int updateQwbRepair(QwbRepair qwbRepair)
	{
	    return qwbRepairMapper.updateQwbRepair(qwbRepair);
	}

	/**
     * 删除維修对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbRepairByIds(String ids)
	{
		return qwbRepairMapper.deleteQwbRepairByIds(Convert.toStrArray(ids));
	}
	
}
