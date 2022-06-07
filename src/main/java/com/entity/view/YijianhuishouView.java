package com.entity.view;

import com.entity.YijianhuishouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 一键回收
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-25 14:45:07
 */
@TableName("yijianhuishou")
public class YijianhuishouView  extends YijianhuishouEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YijianhuishouView(){
	}
 
 	public YijianhuishouView(YijianhuishouEntity yijianhuishouEntity){
 	try {
			BeanUtils.copyProperties(this, yijianhuishouEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
