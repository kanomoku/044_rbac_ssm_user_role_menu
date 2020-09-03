package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.UsersMapper;
import com.pojo.Users;
import com.service.MenuService;
import com.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

	@Resource
	private UsersMapper usersMapper;
	@Resource
	private MenuService menuServiceImpl;
	
	@Override
	public Users login(Users users) {
		Users user = usersMapper.selByUser(users);
		user.setMenus(menuServiceImpl.showMenu(user.getRid()));
		return user;
	}

}
