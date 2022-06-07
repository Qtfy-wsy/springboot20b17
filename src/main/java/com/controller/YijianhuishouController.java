package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YijianhuishouEntity;
import com.entity.view.YijianhuishouView;

import com.service.YijianhuishouService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 一键回收
 * 后端接口
 * @author 
 * @email 
 * @date 2022-04-25 14:45:07
 */
@RestController
@RequestMapping("/yijianhuishou")
public class YijianhuishouController {
    @Autowired
    private YijianhuishouService yijianhuishouService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YijianhuishouEntity yijianhuishou,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("maijia")) {
			yijianhuishou.setMaijiazhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YijianhuishouEntity> ew = new EntityWrapper<YijianhuishouEntity>();
		PageUtils page = yijianhuishouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yijianhuishou), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YijianhuishouEntity yijianhuishou, 
		HttpServletRequest request){
        EntityWrapper<YijianhuishouEntity> ew = new EntityWrapper<YijianhuishouEntity>();
		PageUtils page = yijianhuishouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yijianhuishou), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YijianhuishouEntity yijianhuishou){
       	EntityWrapper<YijianhuishouEntity> ew = new EntityWrapper<YijianhuishouEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yijianhuishou, "yijianhuishou")); 
        return R.ok().put("data", yijianhuishouService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YijianhuishouEntity yijianhuishou){
        EntityWrapper< YijianhuishouEntity> ew = new EntityWrapper< YijianhuishouEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yijianhuishou, "yijianhuishou")); 
		YijianhuishouView yijianhuishouView =  yijianhuishouService.selectView(ew);
		return R.ok("查询一键回收成功").put("data", yijianhuishouView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YijianhuishouEntity yijianhuishou = yijianhuishouService.selectById(id);
        return R.ok().put("data", yijianhuishou);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YijianhuishouEntity yijianhuishou = yijianhuishouService.selectById(id);
        return R.ok().put("data", yijianhuishou);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YijianhuishouEntity yijianhuishou, HttpServletRequest request){
    	yijianhuishou.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yijianhuishou);
        yijianhuishouService.insert(yijianhuishou);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YijianhuishouEntity yijianhuishou, HttpServletRequest request){
    	yijianhuishou.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yijianhuishou);
        yijianhuishouService.insert(yijianhuishou);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YijianhuishouEntity yijianhuishou, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yijianhuishou);
        yijianhuishouService.updateById(yijianhuishou);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yijianhuishouService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YijianhuishouEntity> wrapper = new EntityWrapper<YijianhuishouEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("maijia")) {
			wrapper.eq("maijiazhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = yijianhuishouService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	







}
