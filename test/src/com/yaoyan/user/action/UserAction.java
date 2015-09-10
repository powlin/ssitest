package com.yaoyan.user.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.yaoyan.base.action.BaseAction;
import com.yaoyan.user.domain.ShowInfos;
import com.yaoyan.user.domain.User;
import com.yaoyan.user.mail.MailTest;
import com.yaoyan.user.service.MoneyDataService;
import com.yaoyan.user.service.UserService;
import com.yaoyan.user.util.JsonUtil;
import com.yaoyan.user.util.MD5Util;
import com.yaoyan.user.util.RandomUtil;

@Controller
public class UserAction extends BaseAction{
	
//	private final Logger log = Logger.getLogger(UserAction.class);

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String realname;
	private String mailbox;
	private String usernameR;
	private String passwordR;
	private String passwordRA;
	private String result;
	private String validation;
	private UserService userService;
	List<ShowInfos> showInfoslist;
	private MoneyDataService moneyDataService;
	
	private static HttpServletResponse response;
	private static PrintWriter writer;
	
	public String getUsername() {
		if(username==null){
			username="";
		}
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		if(password==null){
			password="";
		}
		return password;
	}
	public String getRealname() {
		if(realname==null){
			realname="";
		}
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getMailbox() {
		if(mailbox==null){
			mailbox="";
		}
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getUsernameR() {
		if(usernameR==null){
			usernameR="";
		}
		return usernameR;
	}
	public void setUsernameR(String usernameR) {
		this.usernameR = usernameR;
	}
	public String getPasswordR() {
		if(passwordR==null){
			passwordR="";
		}
		return passwordR;
	}
	public void setPasswordR(String passwordR) {
		this.passwordR = passwordR;
	}
	public String getPasswordRA() {
		if(passwordRA==null){
			passwordRA="";
		}
		return passwordRA;
	}
	public void setPasswordRA(String passwordRA) {
		this.passwordRA = passwordRA;
	}
	
	public String login() throws Exception{
		response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		writer = response.getWriter();
		User user = userService.getUsernameAndPassword(getUsername(),MD5Util.getMD5(getPassword()));
		if(user!=null){
			getSession().put("user", user);
			setResult("loginSuccess");
			if(user.getRealname() == null && user.getMailbox() == null){
				return "register";
			}
//			getRequest().put("arrays", new User("123", "12311"));
//			result = JsonUtil.stringToJson(result);
//			writer.print(result);//向客户端写数据
			String[] jsoup = moneyDataService.getLastMoneyData();//获取数据库中保存的值
//			String[] jsoup = JsoupUtil.getMoneyDataArrByJsoup();//抓网页参数
			setRequestPara(getRequest(), user, jsoup);//设置request参数
			return SUCCESS;
		}
		result = JsonUtil.returnFail();
		writer.print(result);//向客户端写数据
		return ERROR;
	}
	
	public String loginSucc() throws Exception{
		String[] jsoup = moneyDataService.getLastMoneyData();//获取数据库中保存的值
//		String[] jsoup = JsoupUtil.getMoneyDataArrByJsoup();//抓网页参数
		setRequestPara(getRequest(), (User)getSession().get("user"), jsoup);//设置request参数
		return SUCCESS;
	}

	private void setRequestPara(Map<String, Object> request, User user, String[] jsoup) {
		request.put("bankaccountCount", user.getBankaccountcount());//银行账户数
		request.put("aliaccountCount", user.getAliaccountcount());//阿里账户数
		String[] money = user.getZhifubaomoney().split("\\.");
		if(money.length==2){
			request.put("zhifubaomoney_zheng", money[0]);//支付宝_整数部分
			request.put("zhifubaomoney_xiao", money[1]);//支付宝_小数部分
		}else{
			request.put("zhifubaomoney_zheng", money[0]);//支付宝_整数部分
			request.put("zhifubaomoney_xiao", "00");//小数点后为0，直接置值为00
		}
		request.put("yuebaomoney", user.getYuebaomoney());//余额宝
		double moneyPer1W = Double.valueOf(user.getYuebaomoney())/10000*Double.valueOf(jsoup[0]);
		request.put("moneyPer1W", new DecimalFormat("######0.00").format(moneyPer1W));
		request.put("moneyRate", jsoup[1]);
	}
	public String logout() throws Exception{
		getSession().clear();
		return LOGIN;
	}
	
	public String register() throws Exception{
		response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		writer = response.getWriter();
		User user = userService.getUsername(getUsernameR());
		if(user==null){
			long num = userService.insertNewUser(getUsernameR(),MD5Util.getMD5(getPasswordR()));
			if(num!=-1){
				user = new User();
				user.setUsername(getUsernameR());
				user.setPassword(MD5Util.getMD5(getPasswordR()));
				getSession().put("user", user);
				setResult("loginSuccess");
//				result = JsonUtil.stringToJson(result);
//				writer.print(result);//向客户端写数据
				return "register";
			}
		}
		result = JsonUtil.returnFail();
		writer.print(result);//向客户端写数据
		return ERROR;
	}
	
	public String registerAll() throws Exception{
		response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		writer = response.getWriter();
		Object vali = getSession().get("validation");
		if(vali != null){
			if(!vali.toString().equals(getValidation())){
				return "register";
			}
		}else{
			return ERROR;
		}
		User user = (User)getSession().get("user");
		String username = user.getUsername();//当前注册的用户名
		userService.updateDetailByUsername(username, getRealname(), getMailbox());//根据用户名更新详细信息
		user.setRealname(getRealname());
		user.setMailbox(getMailbox());
		getSession().put("user", user);//保存到session
		String[] jsoup = moneyDataService.getLastMoneyData();//获取数据库中保存的值
		setRequestPara(getRequest(), user, jsoup);//设置request参数
		return SUCCESS;
	}
	
	public String sendMail() throws Exception{
		response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		writer = response.getWriter();
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Object vali = getSession().get("validation");
		if(vali == null){
			vali = RandomUtil.getRandom(6);
		}
		getSession().put("validation", vali);
		boolean send = MailTest.sendMail(getMailbox(), 
				"X付宝邮件提醒", 
				"尊敬的" + getUsername() + "，您的验证码为：" + vali + "，如非您操作，请忽略此邮件，谢谢！");
		//发送成功
		if(send){
			writer.print("y");//向客户端写数据
		}else{
			writer.print("n");//向客户端写数据
		}
		return null;
	}
	
	public String enter() throws Exception{
		showInfoslist = userService.findAllItsInfo();
		getRequest().put("showInfoslist", showInfoslist);
		return "enter";
	}
	
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public MoneyDataService getMoneyDataService() {
		return moneyDataService;
	}
	public void setMoneyDataService(MoneyDataService moneyDataService) {
		this.moneyDataService = moneyDataService;
	}
	public String getValidation() {
		return validation;
	}
	public void setValidation(String validation) {
		this.validation = validation;
	}
	public List<ShowInfos> getShowInfoslist() {
		return showInfoslist;
	}
	public void setShowInfoslist(List<ShowInfos> showInfoslist) {
		this.showInfoslist = showInfoslist;
	}
	
}
