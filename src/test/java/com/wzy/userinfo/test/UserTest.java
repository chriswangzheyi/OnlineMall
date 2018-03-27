package com.wzy.userinfo.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wzy.model.UserInfo;
import com.wzy.service.UserInfoService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application-context.xml")
public class UserTest {

	@Autowired
	private UserInfoService service;

	@Test
	public void testAdd() {
		UserInfo user = new UserInfo();
		
		user.setUserName("汪哲逸");

		service.addUser(user);
	
	}
	
	@Test
	public void testUpdate() {
		
		try {
			UserInfo user = new UserInfo();
			user.setUserId(26);
			user.setUserName("石牛哥");
			

			service.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}
	
	@Test
	public void testlist(){
		
		UserInfo user = new UserInfo();
		//user.setUserName("张");
		//user.setUserType("普通用户");
		List<UserInfo> list = service.getList(user);
		
		for(UserInfo u:list){
			System.out.println(u);
		}
		
		
	}

	
	@Test
	public void testcount(){
		UserInfo user = new UserInfo();
		//user.setUserName("秋");
	System.out.println(service.getcount(user));
		
		
	}
}
