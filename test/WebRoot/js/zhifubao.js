	var angle=0;//旋转角度
   	var angle_v=3;
   	var mouse_flag=0;//鼠标是否移开标志
   	var div_angle=0;//旋转角度
   	var div_mouse_flag=0;//鼠标是否移开标志
   	$(document).ready(function(){
       	init();
       	$(".cursor_white_font").hover(function(){
           	$(this).css('text-decoration', 'underline');
        }, function(){
           	$(this).css('text-decoration', 'none');
        });
        $("#username_div").mouseover(function(){
           	mouse_flag=0;
           	var time1=setInterval(function(){
           		if(angle>180){
           			$(this).mouseout();
                    clearInterval(time1);//取消
                }else{
                	if(mouse_flag===1){
                		$(this).mouseout();
                    }else{
                       	changeimg('username_ico', angle);
   		            	angle=angle+angle_v;
                    }
                }
           	}, 1);
        });
        $("#username_div").mouseout(function(){
           	mouse_flag=1;
           	var time2=setInterval(function(){
                   if(angle<0){
                       $(this).mouseover();
                       clearInterval(time2);//取消
                   }else{
                       if(mouse_flag===0){
                           $(this).mouseover();
                       }else{
		            	changeimg('username_ico', angle);
		            	angle=angle-angle_v;
                       }
                   }
               }, 1);
           });
           $("#help_div").mouseover(function(){
           	div_mouse_flag=0;
           	var time3=setInterval(function(){
                   if(div_angle>180){
                       $(this).mouseout();
                       clearInterval(time3);//取消
                   }else{
                       if(div_mouse_flag===1){
                           $(this).mouseout();
                       }else{
                       	changeimg('help_ico', div_angle);
                       	div_angle=div_angle+angle_v;
                       }
                   }
               }, 1);
           });
           $("#help_div").mouseout(function(){
           	div_mouse_flag=1;
           	var time4=setInterval(function(){
                   if(div_angle<0){
                       $(this).mouseover();
                       clearInterval(time4);//取消
                   }else{
                       if(div_mouse_flag===0){
                           $(this).mouseover();
                       }else{
		            	changeimg('help_ico', div_angle);
		            	div_angle=div_angle-angle_v;
                       }
                   }
               }, 1);
           });
           $("#exit").click(function(){
        	   location.href="myUser!logout";
           });
           $(".zhuanzhangABtn").click(function(){
        	   location.href="location!zhuanzhang";
           });
           $(".welcomeABtn").click(function(){
        	   location.href="myUser!loginSucc";
           });
       });
   		//初始化
       function init(){
    	   var date=new Date();
           var hour=date.getHours();
           var hello, hello_tip, main_head_div;
           if(parseInt(hour)<11){
        	   hello='早上好,';
        	   hello_tip='&nbsp;每天努力，让梦想更近一点';
        	   main_head_div='url("img/jpg/title_backg_morning.jpg")';
           }else if(parseInt(hour)>=11&&parseInt(hour)<13){
        	   hello='中午好,';
        	   hello_tip='&nbsp;吃顿丰富的午餐，为身体加油';
        	   main_head_div='url("img/jpg/title_backg_noon.jpg")';
           }else if(parseInt(hour)>=13&&parseInt(hour)<18){
        	   hello='下午好,';
        	   hello_tip='&nbsp;喝杯茶吧，让精神抖擞起来';
        	   main_head_div='url("img/jpg/title_backg_afternoon.jpg")';
           }else{
        	   hello='晚上好,';
        	   hello_tip='&nbsp;尽情享受属于你自己的时间吧';
        	   main_head_div='url("img/jpg/title_backg_night.jpg")';
           }
           $("#hello").text(hello);
           $("#hello_tip").html(hello_tip);
           $(".main_head_div").css('background-image', main_head_div);
           
           //当前日期+“收益：”
           $("#date_get").text(getYestoday(date)+"收益：");
           
           //资产动态（时间）
           var month=show2num(date.getMonth()+1);
           $("#money_dynamic_date").html("("+month+".01 - "+month+"."+show2num(date.getDate())+")");
       }
       //显示2位数，不足的前面加“0”
       function show2num(num){
    	   if(num<10){
    		   return "0"+num;
    	   }else{
    		   return num;
    	   }
       }
       function getYestoday(date){       
    	    var yesterday_milliseconds=date.getTime()-1000*60*60*24;        
    	    var yesterday = new Date();        
    	        yesterday.setTime(yesterday_milliseconds);        
    	         
    	    var strDay = yesterday.getDate();
    	    if(strDay<10){
    	    	strDay="0"+strDay;
    	    }    
    	    var strMonth = yesterday.getMonth()+1;
    	    if(strMonth<10){
    	        strMonth="0"+strMonth;
    	    }
    	    datastr = strMonth+"月"+strDay+"日";
    	    return datastr;   
    	  } 
	   	function changeimg(strname,dushu){
	   	    rotate(document.getElementById(strname), dushu);
	   	}
	   	function rotate(target, degree) {
	  		var 
	  		    userAgent = navigator.userAgent,
	  		    isIE = /msie/i.test(userAgent) && !window.opera,
	  		    isWebKit = /webkit/i.test(userAgent),
	  		    isFirefox = /firefox/i.test(userAgent);
	  		    if (isWebKit) {
	  		        target.style.webkitTransform = "rotate(" + degree + "deg)";
	  		    } else if (isFirefox) {
	  		        target.style.MozTransform = "rotate(" + degree + "deg)";
	  		    } else if (isIE) {
	  		        //chessDiv.style.filter = "progid:DXImageTransform.Microsoft.BasicImage(rotation=" + degree + ")";
	  		        degree = degree / 180 * Math.PI;
	  		        var sinDeg = Math.sin(degree);
	  		        var cosDeg = Math.cos(degree);
	  		        
	  		        target.style.filter = "progid:DXImageTransform.Microsoft.Matrix(" +
	  		                "M11=" + cosDeg + ",M12=" + (-sinDeg) + ",M21=" + sinDeg + ",M22=" + cosDeg + ",SizingMethod='auto expand')";
	  		    } else {
	  		        target.style.transform = "rotate(" + degree + "deg)";
	  		    }
	  		}