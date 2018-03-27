package com.wzy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wzy.model.UserInfo;
import com.wzy.service.UserInfoService;

/**
 * @author 汪哲逸
 * 控制User
 *
 */
@Controller
public class UserInfoController extends BaseController{

	@Autowired
	private UserInfoService userserivce;
	
	
	//后端主页面
	@RequestMapping("back/login")
	public String login(){
		return "main/index";
	}
	
	
	@RequestMapping("back/bootm")
	public String bootm(){
		return "main/bootm";
	}
	
	//后端登录页面
	@RequestMapping("back/home")
	public String backhome(){
		return "main/login_back";
	}
	
	/**
	 * 加载添加页面
	 * @return
	 */
	@RequestMapping("user/loadadd")
	public String loadadd(){
		
		return "userinfo/userinfo_add";
	}
	
	/**
	 * 查询用户信息
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("user/list")
	public String list(UserInfo user,Model model,HttpServletRequest request){
		
		if(user!=null){
			this.initPage(request);
			user.setStart(this.getPageNo());//起始记录数
			user.setLength(PAGE_NUM_BIG);//每页显示记录数
		}
	
		List<UserInfo> list = userserivce.getList(user);
		
		//表单内容
		model.addAttribute("list", list);
		//总记录数
		model.addAttribute("total", userserivce.getcount(user));
		
		return "userinfo/userinfo_list";
	}
	
	/**
	 * 添加用户
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("user/add")
	public String add(UserInfo user,Model model){
		String info ="操作失败";
		try {
			userserivce.addUser(user);
			info = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("info", info);
		
		return "userinfo/userinfo_info";
	}
	
	/**
	 * 修改用户
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("user/update")
	public String update(UserInfo user,Model model){
		String info ="操作失败";
		try {
			userserivce.update(user);
			info = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("info", info);
		
		return "userinfo/userinfo_info";
	}
	
	/**
	 * 删除用户
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("user/delete")
	public String delete(UserInfo user,Model model){
		String info ="操作失败";
		try {
			userserivce.delete(user);
			info = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("info", info);
		
		return "userinfo/userinfo_info";
	}
	
	/**
	 * 加载修改页面
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("user/loadupdate")
	public String loadupdate(UserInfo user,Model model){
		
		model.addAttribute("user", userserivce.getUserInfo(user));
		
		return "userinfo/userinfo_update";
	}
	
	/**
	 * 手机号码验证
	 * @param user
	 * @return
	 */
	@RequestMapping("user/userajax")
	public @ResponseBody String userAjax(UserInfo user){
		
		UserInfo puser = userserivce.getUserInfo(user);
		
		if(puser!=null){
			return "手机号码已经存在，请重新输入";
		}else{
			return "恭喜您，手机号码可以使用!";
		}
		
		
	}
	
	/**
	 * Excel导入数据到数据库
	 * @return
	 */
	@RequestMapping("user/imuser")
	public String uploadExcel(@RequestParam(value = "upfile", required = false) MultipartFile file,Model model){
		String info ="操作失败";
		try {
			
			userserivce.uploadExcel(file.getInputStream());			
			
			info = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("info", info);
		
		return "userinfo/userinfo_info";
		
	}
	
}
