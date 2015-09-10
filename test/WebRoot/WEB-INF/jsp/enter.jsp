<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>连接IT</title>
    <SCRIPT type="text/javascript" src="js/jquery-1.8.3.min.js"></SCRIPT>
    <script type="text/javascript">
    	
    </script>
    <style type="text/css">
    	body{
    		background-image: url("img/jpg/showbackg.jpg");
    		font-size: 12px;
    	}
    	#mainDiv{
    		margin: 0px auto;
    		margin-top: 100px;
    		width: 70%;
    		height: 60%;
    		background-color: #d0d0d0;
    		-webkit-border-radius: 10px;
    		padding-top: 30px;
    	}
    	#mainInnerDiv{
    		width: 95%;
    		margin: 0px auto;
    	}
    </style>
  </head>
  
  <body>
  	<div id="bodyDiv">
  		<div id="mainDiv">
  			<div id="mainInnerDiv">
  				<table style="width: 100%">
			  		<tr>
			  			<th width="40px">
			  				序号
			  			</th>
			  			<th width="60px">
			  				姓名
			  			</th>
			  			<th width="50px">
			  				工号
			  			</th>
			  			<th width="180px">
			  				邮箱
			  			</th>
			  			<th width="110px">
			  				手机
			  			</th>
			  			<th width="360px">
			  				负责系统
			  			</th>
			  		</tr>
			  		<s:iterator value="showInfoslist" id="sil" status="s">
				  		<tr>
				  			<td align="center">
				  				<s:property value="#s.index+1"/>
				  			</td>
				  			<td align="center">
				  				<s:property value="#sil.name"/>
				  			</td>
				  			<td align="center">
				  				<s:property value="#sil.number"/>
				  			</td>
				  			<td align="center">
				  				<s:property value="#sil.mailbox"/>
				  			</td>
				  			<td align="center">
				  				<s:property value="#sil.mobile"/>
				  			</td>
				  			<td align="center">
				  				<s:property value="#sil.responseSystem"/>
				  			</td>
				  		</tr>
				  	</s:iterator>
			  	</table>
  			</div>
	  	</div>
  	</div>
  </body>
</html>
