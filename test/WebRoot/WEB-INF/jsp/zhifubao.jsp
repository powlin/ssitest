<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.user.username==null">
	<jsp:forward page="/index.jsp"></jsp:forward>
</s:if>

<html>
  <head>
    
    <title>我的支付宝 - 支付宝</title>
  	<link rel="stylesheet" href="css/common.css" type="text/css" />
  	<link rel="stylesheet" href="css/zhifubao.css" type="text/css" />
    
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
	  					<li class="menu_li_select">◆</li>
	  					<li class="title_li title_li_select welcomeABtn">我的支付宝</li>
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li">交易记录</li>
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li">会员保障</li>
	  					<li class="menu_li_hidden">◆</li>
	  					<li class="title_li zhuanzhangABtn">应用中心</li>
	  				</ul>
  				</div>
  			</div>
  		</div>
  		<div class="main_div">
  			<div class="main_head_div">
	  			<div class="main_title_div">
	  				<ul class="width990_ul">
	  					<li class="float_left">
	  						<a href="javascript:void(0)" class="cursor_white_font list_item_li_a list_item_li_a_select">首页</a>
	  					</li>
	  					<li class="float_left">
	  						<a href="javascript:void(0)" class="cursor_white_font list_item_li_a">账户资产</a>
	  					</li>
	  					<li class="float_left">
	  						<a href="javascript:void(0)" class="cursor_white_font list_item_li_a">账户设置</a>
	  					</li>
	  					<li class="float_left">
	  						<a href="javascript:void(0)" class="cursor_white_font list_item_li_a">财户通</a>
	  					</li>
	  					<li class="float_left">
	  						<a href="javascript:void(0)" class="cursor_white_font list_item_li_a list_item_li_a_hidden">商户服务</a>
	  					</li>
	  					<li class="float_right">
	  						<div>
	  							<form action="" class="search_form">
	  								<input type="text" placeholder="输入关键字，如“密码”" class="search_form_input">
	  								<img src="img/png/magnifier.png" class="vertical_align_middle_img">
	  							</form>
	  						</div>
	  					</li>
	  				</ul>
	  			</div>
	  			<div class="main_tip_div">
	  				<div class="circle"></div>
	  				<div class="maintip_normal_div">
	  					<div class="small_font maintip_normal_below_div">
	  						<p class="display_inline16">
	  							<label id="hello"></label>
	  							<a href="javascript:void(0)" class="cursor_white_font display_inline16">${user.realname}</a>
	  						</p>
	  						<div class="display_inline" id="hello_tip"></div>
	  					</div>
	  					<div class="small_font maintip_normal_under_div">
	  						账户名：
	  						<a href="javascript:void(0)" class="cursor_white_font">${user.mailbox}</a>
	  						<span class="maintip_normal_under_div_separate">|</span>
	  						安全等级：
	  						<a href="javascript:void(0)" class="safe_level">高</a>
<%--		  					<img src="img/png/anquandengji.png" style="cursor: pointer;vertical-align: text-top;margin-left: 10px;">--%>
	  						<span class="maintip_normal_under_div_separate">|</span>
	  						上次登录时间：2014.04.20 11:11:20
	  					</div>
	  				</div> 
	  			</div>
	  			<div class="money_div">
	  				<div class="money_main">
	  					<table class="money_table">
	  						<tr>
	  							<td class="width50 common_border">
	  								<div class="money_table_td_div">
	  									<div class="money_table_first_td">
	  											<div class="money_table_first_td1_position">
		  											<span class="font_size14_weight500">账户余额</span>
	  											</div>
	  											<div>
	  												<div class="small_font money_num_div">
	  													<strong class="money_num_strong">${zhifubaomoney_zheng}<span class="font_size18">.${zhifubaomoney_xiao}</span></strong>
	  													元
	  												</div>
	  												<ul>
		  												<li class="btn_li li_btn">
		  													<a>充 值</a>
		  												</li>
		  												<li class="btn_li li_btn">
		  													<a>提 现</a>
		  												</li>
		  												<li class="btn_li li_btn">
		  													<a class="zhuanzhangABtn">转 账</a>
		  												</li>
		  												<li class="small_font">
		  													<a href="javascript:void(0)" class="color08c view_a">查看</a>
		  												</li>
		  											</ul>
	  											</div>
	  									</div>
	  								</div>
	  							</td>
	  							<td class="width25 common_border" rowspan="2">
	  								<div class="height227">
	  									<div class="money_table_td25_totaldiv">
	  										<div class="money_table_td25_managermoney">
	  											<span class="font_size14_weight500">理财</span>
	  											<img src="img/png/licai.png" class="cursor_pointer_float_right">
	  										</div>
	  										<div class="height115_div">
	  											<p class="small_font income_rate_num">更高收益，更多选择</p>
	  										</div>
	  										<div class="small_font">
	  											<a href="javascript:void(0)" class="color08c">管理</a>
	  											<span class="position_relative_top2_div_separate">|</span>
	  											<a href="javascript:void(0)" class="color08c">理财产品</a>
	  										</div>
	  									</div>
	  								</div>
	  							</td>
	  							<td class="width25 common_border" rowspan="2">
	  								<div class="small_font color666 height227_div">
	  									<div class="money_other_person_div">
	  										<div class="money_other_person_inner_div">
	  											<span class="font_size14_weight500">其他账户</span>
	  											<a href="javascript:void(0)" class="color08c float_right">更多&gt;</a>
	  										</div>
	  										<div class="height115_div">
	  											<div>
	  												<ul>
	  													<li class="height115_div_li">
	  														<span>
  																<img src="img/png/yinhangka.png">
	  															<label class="margin_left5">
		  															银行卡：
	  															</label>
	  															<a href="javascript:void(0)" class="color08c">${bankaccountCount}</a> 张
	  														</span>
	  													</li>
	  													<li class="height115_div_li">
	  														<span>
	  															<img src="img/png/alizhanghu.png">
	  															<label class="margin_left5">
		  															阿里账户：
	  															</label>
	  															<a href="javascript:void(0)" class="color08c">${aliaccountCount}</a>
	  															个
	  														</span>
	  													</li>
	  													<li class="height115_div_li">
	  														<span>
	  															<img src="img/png/baoxianzhanghu.png">
	  															<label class="margin_left5">
		  															保险账户：
	  															</label>
	  															<a href="javascript:void(0)" class="color08c">0</a> 个
	  														</span>
	  													</li>
	  												</ul>
	  											</div>
	  										</div>
	  										<div class="color666">
  												<p class="encourage">
  													集分宝：
  													<a href="javascript:void(0)" class="color08c">0</a> 个
  												</p>
  												<p class="encourage">
  													红包：
  													<a href="javascript:void(0)" class="color08c">0</a> 个
  												</p>
  											</div>
	  									</div>
	  								</div>
	  							</td>
	  						</tr>
	  						<tr>
	  							<td class="width50 common_border">
	  								<div class="money_table_td_div">
	  									<div class="money_table_first_td">
	  										<div class="money_table_first_td2_position">
	  											<span class="font_size14_weight500">余额宝</span>
	  										</div>
	  										<div>
	  											<div class="small_font position_relative_top2_div">
	  												<label id="date_get"></label>
	  												<a href="javascript:void(0)" class="income_num">${moneyPer1W}</a> 元
	  												<span class="margin_left20 income_rate_num">
	  													七日年化收益率：${moneyRate}
	  												</span>
	  												<a href="javascript:void(0)" class="color08c margin_left10">转入</a>
	  												<span class="position_relative_top2_div_separate">|</span>
	  												<a href="javascript:void(0)" class="color08c">转出</a>
	  												<span class="position_relative_top2_div_separate">|</span>
	  												<a href="javascript:void(0)" class="color08c">管理</a>
	  											</div>
  											</div>
	  									</div>
	  								</div>
	  							</td>
	  						</tr>
	  					</table>
	  				</div>
	  			</div>
	  			<div class="money_div money_below_div">
	  				<div>
	  					<div class="money_below_inner_header_div">
	  						<ul class="money_below_inner_header_ul">
	  							<li class="color08c money_dynamic_li">
	  								资产动态
	  								<span class="color666" id="money_dynamic_date"></span>
	  							</li>
	  							<li class="color666 business_record_li">
	  								交易记录
	  							</li>
	  						</ul>
	  						<span class="electronic_bill_span">
	  							<img src="img/png/dianziduizhangdan.png" class="vertical_align_text_top_img">
	  							<a href="javascript:void(0)" class="color08c electronic_bill_a">
		  							电子对账单
	  							</a>
	  						</span>
	  					</div>
	  					<div>
	  						<div class="common_border">
	  							<div class="business_outer_div">
	  								<div class="business_inner_div">
	  									<span class="business_inner_div_font">最近交易记录</span>
	  									<a href="javascript:void(0)" class="color08c margin_left10">收支明细</a>
	  									<span class="business_inner_div_separate">|</span>
	  									<a href="javascript:void(0)" class="color08c">充值记录</a>
	  									<span class="business_inner_div_separate">|</span>
	  									<a href="javascript:void(0)" class="color08c">提现记录</a>
	  									<span class="business_inner_div_separate">|</span>
	  									<a href="javascript:void(0)" class="color08c">退款记录</a>
	  								</div>
	  							</div>
	  							<div>
	  								<table class="small_font">
	  									<tr>
	  										<td class="money_detail_td width60 align_left">
	  											2014.04.15
											</td>
	  										<td class="money_detail_td width40percent">
	  											<p>
	  												<a href="javascript:void(0)" class="outline_default color4d4d4d">转账</a>
	  											</p>
	  										</td>
	  										<td class="money_detail_td width10percent align_left">
	  											<span class="money_detail_num">
	  												-123.00
	  												<img src="img/png/detail_mx.png" class="vertical_align_middle_img">
	  											</span>
	  										</td>
	  										<td class="money_detail_td width25percent align_right">
	  											交易成功
	  										</td>
	  										<td class="money_detail_td width25percent align_right">
	  											<a href="javascript:void(0)" class="color08c money_detail_td_detail">
		  											详情
	  											</a>
	  										</td>
	  									</tr>
	  								</table>
	  								<div class="money_detail_bottom_div">
  										<img src="img/png/huishouzhan.png" class="vertical_align_middle_img float_left">
	  									<a href="javascript:void(0)" class="color08c float_left margin_left5 outline_default">回收站</a>
										<a href="javascript:void(0)" class="color08c outline_default">查看所有交易记录</a>
	  								</div>
	  							</div>
	  						</div>
	  					</div>
	  				</div>
	  			</div>
  			</div>
  		</div>
  		<div class="bottomDiv">
  			
  		</div>
  	</div>
  </body>
</html>
