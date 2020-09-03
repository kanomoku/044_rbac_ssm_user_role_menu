package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.MenuMapper;
import com.pojo.Menu;
import com.service.MenuService;
@Service
public class MenuServiceImpl implements MenuService{
	@Resource
	private MenuMapper menuMapper;
	@Override
	public List<Menu> showMenu(int rid) {
		return menuMapper.selByRid(rid, 0);
	}

}
