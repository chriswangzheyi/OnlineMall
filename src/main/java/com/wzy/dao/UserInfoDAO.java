package com.wzy.dao;

import java.util.List;

import com.wzy.model.UserInfo;

/**
 * 用户管理的数据访问的接口
 * @author 汪哲逸
 *
 */
public interface UserInfoDAO {

		/**
		 * 添加信息
		 * @param user
		 * @return
		 */
		public int add(UserInfo user);
		
		/**
		 * 根据条件查询用户信息
		 * @param user 查询条件
		 * @return
		 */
		public List<UserInfo> getUserList(UserInfo user);
		
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
		 * @return
		 */
		public int updateUserInfo(UserInfo user);
		
		/**
		 * 删除用户信息
		 * @param user
		 * @return
		 */
		public int delete(UserInfo user);
		
		/**
		 * 用户登录
		 * @param user
		 * @return
		 */
		public UserInfo userlogin(UserInfo user);
	
}
