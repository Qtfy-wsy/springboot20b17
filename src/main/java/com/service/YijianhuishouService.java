package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YijianhuishouEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YijianhuishouVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YijianhuishouView;


/**
 * 一键回收
 *
 * @author 
 * @email 
 * @date 2022-04-25 14:45:07
 */
public interface YijianhuishouService extends IService<YijianhuishouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YijianhuishouVO> selectListVO(Wrapper<YijianhuishouEntity> wrapper);
   	
   	YijianhuishouVO selectVO(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
   	
   	List<YijianhuishouView> selectListView(Wrapper<YijianhuishouEntity> wrapper);
   	
   	YijianhuishouView selectView(@Param("ew") Wrapper<YijianhuishouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YijianhuishouEntity> wrapper);
   	

}

