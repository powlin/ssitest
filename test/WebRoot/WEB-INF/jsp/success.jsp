<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录成功</title>
    <SCRIPT type="text/javascript" src="js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT type="text/javascript" src="js/success.js"></SCRIPT>
    
  	<link rel="stylesheet" href="css/success.css" type="text/css" />
  </head>
  
  <body>
  	<div class="body_div">
  		<div>
		  	success! ${user.username} <a href="javascript:void(0)" id="logoutA">注销</a>
  		</div>
  		<div class="write_div">
  			<s:form action="myUser!registerAll" method="post" id="registerAllForm">
  				<label class="input_label">姓&nbsp;&nbsp;名：</label><input type="text" class="input" id="realname" name="realname"><br>
  				<label class="input_label">邮&nbsp;&nbsp;箱：</label><input type="text" class="input" id="mailbox" name="mailbox">
  				<label class="input_label">验证码：</label><input type="text" class="input" id="validation" name="validation">
  				<input type="button" value="获取验证码" class="form_btn" id="getValBtn">
  				<input type="button" value="正在获取..." class="form_btn hidden_btn" id="valGetting" disabled="disabled">
  				<input type="button" value="确认" class="form_btn hidden_btn" id="yesBtn">
  			</s:form>
  		</div>
  	</div>
  	
  	
  </body>
</html>
