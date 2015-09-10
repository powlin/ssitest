<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>小黑板</title>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <link rel="shortcut icon" href="img/ico/baidu.ico" type="image/x-icon" /> 
    <style type="text/css">
    	#enter_div{
    		position: absolute;
    		width: 200px;
    		height: 87px;
    		z-index: 100;
    		top: 50px;
    		left: 50px;
    		filter: alpha(opacity=0);
    		opacity: 0;
    		cursor: pointer;
    	}
    </style>
</head>

<body>
	<canvas id="canvas" width="1400" height="800">     
       	<p>Your browserdoes not support the canvas element!</p>
	</canvas>
	<div id="enter_div">
		<img id="enter_img" src="img/png/welcome.png">
		<form id="enter_form" action="myUser!enter"></form>
	</div>
</body>
<script type="text/javascript">
    var canvas =document.getElementById("canvas");//定义画布     
    var ctx =canvas.getContext("2d");//定义纬度
    var myImage = new Image();//图片
    myImage.onload = imgrotate;//图片加载时执行方法
    myImage.src = 'img/jpg/itconnection.jpg';//图片的详细路径
    var gotime = 20,//图片"欢迎进入"展现时间
    	intervaltime1 = 20,//图片"小黑板"重画时间
    	intervaltime2 = 200,//图片"欢迎进入"渐变效果时间间隔
    	entertime = 2000;//图片"欢迎进入"开始展现时间（单位：毫秒）
    setInterval(imgrotate, intervaltime1);//周期性执行图片"小黑板"重画方法
    var width = document.body.clientWidth,//可见屏幕宽度
    	height = document.body.clientHeight;//可见屏幕高度
    var num = 0,//旋转角度参数（作为一个可变量乘以固定角度值）
    	flag = 1,//旋转方向，1表示顺时针，-1表示逆时针
    	changeNum = 0.2;//旋转角度参数变化量
    var alpha = 0,//透明度
    	changeAlpha = 10;//透明度变化值
    var enter_div = document.getElementById("enter_div");//图片"欢迎进入"所在div
    var interval2 = setInterval(diventer, intervaltime2);//周期性执行图片"欢迎进入"重画方法
    
    //图片"小黑板"旋转方法
    function imgrotate(){
	    // regular rotation about a point
		var angle = num * Math.PI / 180;
	    if(flag > 0){
	    	num = num + changeNum;
	    	if(num >= 10){
	    		flag = -flag;
	    	}
	    }else{
	    	num = num - changeNum;
	    	if(num <= -10){
	    		flag = -flag;
	    	}
	    }
		var rx = width/2, ry = 30;
		var py = 400; 
		var radius = ry - py; 
		var dx = rx + radius * Math.sin(angle); 
		var dy = ry - radius * Math.cos(angle); 
		
		ctx.save();
		ctx.clearRect(0, 0, 2000, 1500);
		ctx.translate(dx, dy);
		ctx.rotate(angle);
		ctx.translate(-dx, -dy);
		ctx.drawImage(myImage, dx - myImage.width / 2, dy - myImage.height / 2);
		ctx.restore();
	}
    function diventer(){
    	gotime += intervaltime2;
		if(gotime >= entertime){
			if(alpha > 100){
				clearInterval(interval2);
			}
			enter_div.style.filter = 'alpha(opacity='+alpha+')';
			enter_div.style.opacity = alpha/100;
			alpha += changeAlpha;
		}
    }
    
    $(document).ready(function(){
    	$("#enter_img").click(function(){
    		$("#enter_form").submit();
    	});
    });
</script>
</html>