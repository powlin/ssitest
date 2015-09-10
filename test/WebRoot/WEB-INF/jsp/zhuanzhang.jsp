<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    
    <title>我的支付宝 - 支付宝</title>
  	<link rel="stylesheet" href="css/common.css" type="text/css" />
  	<link rel="stylesheet" href="css/zhifubao.css" type="text/css" />
  	<link rel="stylesheet" href="css/zhuanzhang.css" type="text/css" />
    
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/zhifubao.js"></script>
    
    <link rel="shortcut icon" href="img/ico/favicon.ico" type="image/x-icon" /> 
  </head>
  
  <body>
  	<div class="body_div">
  		<div class="head_div">
  			<div class="top_div">
  				<div class="top_mobile_div">
  					<ul>
  						<li>
  							<i>
	  							<img src="img/png/mobile.png" class="vertical_align_middle_img">
  							</i>
  							<a href="javascript:void(0)" class="cursor_white_font margin_left8">
  								手机支付宝
  							</a>
  						</li>
  					</ul>
  				</div>
  				<div class="top_information_div">
  					<ul>
  						<li class="head_li">
		  					你好,
  						</li>
  						<li class="head_li">
  							<div class="display_inline" id="username_div">
	  							<label id="username_label">
	  								${user.realname}
	  							</label>
	  							<img src="img/png/down.png" id="username_ico" class="vertical_align_middle_img">
  							</div>
  						</li>
  						<li class="head_li">
  							<a href="javascript:void(0)" class="cursor_white_font" id="exit">
	  							退出
  							</a>
  						</li>
  						<li class="separateLi">|</li>
  						<li class="head_li">
  							<a href="javascript:void(0)" class="cursor_white_font">
  								我的支付宝
  							</a>
  						</li>
  						<li class="separateLi">|</li>
  						<li class="head_li">
  							<a href="javascript:void(0)" class="cursor_white_font">
  								安全中心
  							</a>
  						</li>
  						<li class="separateLi">|</li>
  						<li class="head_li">
  							<div class="display_inline" id="help_div">
  								<a href="javascript:void(0)" class="cursor_white_font">
	  								帮助中心
  								</a>
  								<img src="img/png/down.png" id="help_ico" class="vertical_align_middle_img">
  							</div>
  						</li>
  						<li class="head_li">
  							<div class="functionDiv">
  								<img src="img/png/function.png" class="vertical_align_middle_img">
  							</div>
  						</li>
  					</ul>
  				</div>
  			</div>
  			<div class="title_div">
  				<div class="logo_div">
  					<img src="img/jpg/zhifubao.jpg">
  				</div>
  				<div class="no_content_div400"></div>
  				<div class="menu_div">
	  				<ul class="float_right">
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li welcomeABtn">我的支付宝</li>
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li">交易记录</li>
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li">会员保障</li>
	  					<li class="menu_li_select">◆</li>
	  					<li class="title_li title_li_select zhuanzhangABtn">应用中心</li>
	  				</ul>
  				</div>
  			</div>
  		</div>
  		<div class="container" id="container">
  			<div class="main_container">
  				<div class="main_container_left">
  					<div id="main_container_sider">
  						<div class="title_other_div">
  							<span class="title">
	  							我的应用&nbsp;(9)
  							</span>
  							<img src="img/png/sheding.png" class="vertical_align_middle_img" id="sheding_img">
  						</div>
  						<div class="title_other_div">
  							<span class="title">
  								转账&nbsp;(4)
  							</span>
  						</div>
  						<div class="container_item">
  							<ul>
  								<li>
  									<span class="container_item_span">
	  									<img src="img/png/zhuanzhangshouye.png" class="container_item_img">
	  									转账首页
  									</span>
  								</li>
  								<li>
  									<span class="container_item_span">
  										<img src="img/png/zhuanzhangdaoyinhangka.png" class="container_item_img">
	  									转账到银行卡
  									</span>
  									<span class="container_item_tip">已添加</span>
  								</li>
  								<li>
  									<span class="container_item_span">
	  									<img src="img/png/zhuanzhangfukuan.png" class="container_item_img">
	  									转账付款
  									</span>
  									<span class="container_item_tip">已添加</span>
  								</li>
  								<li>
  									<span class="container_item_span">
	  									<img src="img/png/AAshoukuan.png" class="container_item_img">
	  									AA收款
  									</span>
  									<span class="container_item_tip">已添加</span>
  								</li>
  								<li>
  									<span class="container_item_span">
	  									<img src="img/png/woyaoshoukuan.png" class="container_item_img">
	  									我要收款
  									</span>
  									<a href="javascript:void(0)" class="container_item_tip_link">+添加</a>
  								</li>
  							</ul>
  						</div>
  						<div class="title_other_div title_other_bottom_div">
  							<span class="title">
  								更多应用&nbsp;&gt;
  							</span>
  						</div>
  					</div>
  				</div>
  				<div class="main_container_right">
  					<div class="main_container_head">
  						<div class="main_container_head_inner">
  							<ul class="option_ul">
  								<li class="option_ul_li">
  									<a href="javascript:void(0)" class="option_ul_li_a">
  										<img alt="" src="img/png/zhuanzhangdaozhifubao_option.png" class="option_ul_li_a_img">
	  									转账到支付宝
  									</a>
  								</li>
  								<li class="option_ul_li option_ul_li_select">
  									<a href="javascript:void(0)" class="option_ul_li_a">
  										<img alt="" src="img/png/zhuanzhangdaoyinhangka_option.png" class="option_ul_li_a_img">
  										转账到银行卡
  									</a>
  								</li>
  							</ul>
  						</div>
  						<div class="main_container_head_right">
  							<a href="javascript:void(0)" class="main_container_head_right_a">
  								转账到支付宝
  							</a>
  							|
  							<a href="javascript:void(0)" class="main_container_head_right_a">
  								下载手机客户端<span>▼</span>
  							</a>
  						</div>
  					</div>
  					<form action="">
  						<div class="main_container_form_div">
  							<div class="main_container_form_div_content">
  								<div class="main_container_form_div_inner">
	  								<label class="normalText">收款方：</label>
	  								<span class="main_container_form_div_inner_bank">
		  								<input class="main_container_form_div_inner_bank_input" placeholder="选择/输入银行" maxlength="32">
		  								<a class="main_container_form_div_inner_bank_a"></a>
	  								</span>
	  								<a href="javascript:void(0);" class="main_container_form_div_inner_hassavedbank">已存银行卡</a>
  								</div>
  								<div class="main_container_form_div_inner">
	  								<label class="normalText"></label>
	  								<span class="main_container_form_div_inner_bank">
		  								<input class="main_container_form_div_inner_bank_input" placeholder="银行卡号" maxlength="32">
	  								</span>
  								</div>
  							</div>
  						</div>
  					</form>
  				</div>
  			</div>
  		</div>
  	</div>
  </body>
</html>
