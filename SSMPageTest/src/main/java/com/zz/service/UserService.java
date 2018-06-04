package com.zz.service;

import java.util.List;

import com.zz.entity.User;
import com.zz.entity.UserExample;
import com.zz.util.PageBean;

public interface UserService {
	List<User> selectALL();
	List<User> selectByExample(UserExample example);
	PageBean<User> selectByPage(int currPage);
}
