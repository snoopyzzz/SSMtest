package com.zz.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zz.dao.UserMapper;
import com.zz.entity.User;
import com.zz.entity.UserExample;
import com.zz.service.UserService;
import com.zz.util.PageBean;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name="userMapper")
	private UserMapper userMapper;

	@Override
	public List<User> selectALL() {	
		return userMapper.selectALL();
	}

	@Override
	public List<User> selectByExample(UserExample example) {
		return userMapper.selectByExample(example);
	}

	@Override
	public PageBean<User> selectByPage(int currPage) {
		HashMap<String,Object> map = new HashMap<>();
		PageBean<User> pageBean = new PageBean<>();
		
		//封装pageBean
		pageBean.setCurrPage(currPage);						//封装当前页
		
		int pageSize = 3;														//封装页面大小
		pageBean.setPageSize(pageSize);
		
		int totalCount = userMapper.count();					//封装总数据条数
		pageBean.setTotalCount(totalCount);
		
		double tc = totalCount;											//封装总页数
		Double num = Math.ceil(tc/pageSize);//向上取整
		pageBean.setTotalPage(num.intValue());
		
//		int totalPage;
//		if(totalCount % pageSize == 0) {
//			totalPage = totalCount / pageSize;
//		}else {
//			totalPage = totalCount / pageSize + 1;
//		}
//		pageBean.setTotalPage(totalPage);
		
		map.put("start", (currPage-1)*pageSize);			//把起始位置和页面大小存进map
		map.put("size", pageBean.getPageSize());
		List<User> list = userMapper.selectByPage(map);//封装每页数据
		pageBean.setList(list);	
		//封装完成
				
		return pageBean;
	}
}
