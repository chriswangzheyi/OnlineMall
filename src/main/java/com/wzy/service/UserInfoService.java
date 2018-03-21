package com.wzy.service;

import java.io.InputStream;
import java.util.List;

import com.wzy.model.UserInfo;


public interface UserInfoService {

	/**
	 * 用户添加
	 * @param user
	 */
	public void addUser(UserInfo user);
	
	/**
	 * 根据条件查询用户信息
	 * @param user 查询条件
	 * @return
	 */
	public List<UserInfo> getList(UserInfo user);
	
	/**
	 * 获取总记录数
	 * @param user
	 * @return
	 */
	public long getcount(UserInfo user);
	
	/**
	 * 根据条件查询用户信息
	 * @param user 查询条件
	 * @return
	 */
	public UserInfo getUserInfo(UserInfo user);
	
	/**
	 * 修改用户信息
	 * @param user
	 */
	public void update(UserInfo user);
	
	/**
	 * 删除用户信息
	 * @param user
	 */
	public void delete(UserInfo user);
	
	/**
	 * 导入Excel中的数据到数据库
	 * @param in
	 */
	public void uploadExcel(InputStream in)throws Exception;
	
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public UserInfo userLogin(UserInfo user);
}
