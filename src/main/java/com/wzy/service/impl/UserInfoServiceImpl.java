package com.wzy.service.impl;

import java.io.InputStream;
import java.util.List;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wzy.dao.UserInfoDAO;
import com.wzy.model.UserInfo;
import com.wzy.service.UserInfoService;

@Service
@Transactional
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO userdao;

	public void addUser(UserInfo user) {

		int i = userdao.add(user);
		System.out.println(i);

	}

	public List<UserInfo> getList(UserInfo user) {

		if (user != null) {

			if (user.getUserName() != null && !user.getUserName().equals("")) {
				user.setUserName("%" + user.getUserName() + "%");
			}
		}

		return userdao.getUserList(user);
	}

	public long getcount(UserInfo user) {
		if (user != null) {

			if (user.getUserName() != null && !user.getUserName().equals("")) {
				user.setUserName("%" + user.getUserName() + "%");
			}
		}
		return userdao.getcount(user);
	}

	public UserInfo getUserInfo(UserInfo user) {
		// TODO Auto-generated method stub
		return userdao.getUserInfo(user);
	}

	public void update(UserInfo user) {

		userdao.updateUserInfo(user);

	}

	public void delete(UserInfo user) {
		userdao.delete(user);

	}

	public void uploadExcel(InputStream in) throws Exception {
		// 选取Excel文件得到工作薄Workbook
		Workbook book = Workbook.getWorkbook(in);
		// 通过Workbook的getSheet方法选择第一个工作表（从0开始）
		Sheet sheet = book.getSheet(0);
		System.out.println(sheet.getColumns());
		System.out.println(sheet.getRows());
		for (int i = 1; i < sheet.getRows(); i++) {

			UserInfo user = new UserInfo();

			// 姓名
			Cell namecell = sheet.getCell(0, i);
			String userName = namecell.getContents();
			user.setUserName(userName);

			// 性别
			Cell sexcell = sheet.getCell(1, i);
			String userSex = sexcell.getContents();
			user.setUserSex(userSex);

			// 电话号码
			Cell phonecell = sheet.getCell(2, i);
			String userPhone = phonecell.getContents();
			user.setUserPhone(userPhone);

			// 密码
			Cell pwcell = sheet.getCell(3, i);
			String userPw = pwcell.getContents();
			user.setUserPw(userPw);
			
			// 用户类型
			Cell typecell = sheet.getCell(4, i);
			String userType = typecell.getContents();
			user.setUserType(userType);

			userdao.add(user);

		}
		book.close();

	}

	@Transactional(readOnly=true)
	public UserInfo userLogin(UserInfo user) {
		// TODO Auto-generated method stub
		return userdao.userlogin(user);
	}

}
