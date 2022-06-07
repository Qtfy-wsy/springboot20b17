package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YijianhuishouDao;
import com.entity.YijianhuishouEntity;
import com.service.YijianhuishouService;
import com.entity.vo.YijianhuishouVO;
import com.entity.view.YijianhuishouView;

@Service("yijianhuishouService")
public class YijianhuishouServiceImpl extends ServiceImpl<YijianhuishouDao, YijianhuishouEntity> implements YijianhuishouService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YijianhuishouEntity> page = this.selectPage(
                new Query<YijianhuishouEntity>(params).getPage(),
                new EntityWrapper<YijianhuishouEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YijianhuishouEntity> wrapper) {
		  Page<YijianhuishouView> page =new Query<YijianhuishouView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YijianhuishouVO> selectListVO(Wrapper<YijianhuishouEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YijianhuishouVO selectVO(Wrapper<YijianhuishouEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YijianhuishouView> selectListView(Wrapper<YijianhuishouEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YijianhuishouView selectView(Wrapper<YijianhuishouEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
