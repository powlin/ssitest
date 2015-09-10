package com.yaoyan.user.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.yaoyan.base.action.BaseAction;

@Controller
public class LocationAction extends BaseAction{
	
	private static final long serialVersionUID = 1L;
	
	private static HttpServletResponse response;
	private static PrintWriter writer;
	
	public String zhuanzhang() throws Exception{
		response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		writer = response.getWriter();
		writer.print("");//输出信息
		return "zhuanzhang";
	}

}
