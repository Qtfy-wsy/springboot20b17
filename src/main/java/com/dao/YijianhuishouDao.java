package com.dao;

import com.entity.YijianhuishouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YijianhuishouVO;
import com.entity.view.YijianhuishouView;


/**
 * 一键回收
 * 
 * @author 
 * @email 
 * @date 2022-04-25 14:45:07
 */
public interface YijianhuishouDao extends BaseMapper<YijianhuishouEntity> {
	
	List<YijianhuishouVO> selectListVO(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
	
	YijianhuishouVO selectVO(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
	
	List<YijianhuishouView> selectListView(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);

	List<YijianhuishouView> selectListView(Pagination page,@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
	
	YijianhuishouView selectView(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
	

}
