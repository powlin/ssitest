var judge_click;//判断是否点击
			var canvas, ctx;
			var cursor_type;//鼠标类型
			var cursor_arr=new Array("pencil", "eraser");//鼠标数组
			var oldx,oldy;//记录坐标
			var x_else=10,y_else=12;//坐标偏移
			var x_eraser_else=8,y_eraser_else=26,init_r=15;//圆的 坐标偏移和初始半径
			var bgcolor="#FFF";//背景色
			var color;//颜色
			var border_color="red";

			$(document).ready(function(){
				canvas=document.getElementById("myCanvas");
				ctx = canvas.getContext('2d');
				judge_click=0;
				change_cursor(0);//初始化鼠标
				change_color("000000");
				$("td.colorClass:first").css("border-color", border_color);//初始化选中颜色
				
				//点击颜色
				$("td.colorClass").click(function(){
					$("td.colorClass").removeAttr("style");
					$(this).css("border-color", border_color);
					$("#selectImg").attr("src", $(this).children().attr("src"));
					var color_num=$("#selectImg").attr("src").replace("ico/color_", "").replace(".bmp", "");//获取颜色的值
					color="#"+color_num;
				});
				
			});
			function startDraw(e){
				judge_click=1;
				oldx=mousePos(e).x-x_else;//按下鼠标时，保存坐标值
				oldy=mousePos(e).y-y_else;
				/*$.post(
					"postPoint.do",
					{
						oldx: oldx,
						oldy: oldy
					},
					function(){
						
					}
				);*/
			}
			function drawCanvas(e) {//画图
				if(judge_click==0){//表示鼠标未点击
					return;
				}
				//获取坐标
				x=mousePos(e).x;
				y=mousePos(e).y;
				var r;//半径(如果是橡皮，半径稍大)
				ctx.beginPath();
				if(cursor_type==0){
					x=x-x_else;
					y=y-y_else;
					ctx.strokeStyle=color;//线条的颜色属性
					ctx.moveTo(oldx, oldy);
					ctx.lineTo(x, y);
					ctx.stroke();
					oldx=x;//记录最后一次的坐标
					oldy=y;
				}else if(cursor_type==1){
					color=bgcolor;
					r=init_r;
					x=x-x_eraser_else;
					y=y-y_eraser_else;
					ctx.fillStyle=color;
					ctx.arc(x,y,r,0,Math.PI*2,true);
					ctx.closePath();
					ctx.fill();
				}
			}
			function endDraw(){
				judge_click=0;
			}

			function cnvs_clear(){
				ctx.clearRect(0,0,canvas.width,canvas.height);
			}

			function load_page(){//页面刷新
				location.reload();
			}

			//改变鼠标    0为初始值
			function change_cursor(type){
				var str_type;
				if(0==type){
					str_type="pencil";
				} else if(1==type){
					str_type="eraser";
				}
				execute_change(str_type, cursor_arr);
				cursor_type=type;
			}
			
			//改变颜色
			function change_color(p_color){
				color="#"+p_color;
			}

			//执行改变
			function execute_change(str, arr){
				canvas.style.cursor="url(ico/cursor_"+str+".bmp), default";
				$("#"+str).attr("src", "ico/"+str+"_click.bmp");
				for(var i=0;i<arr.length;i++){
					if(arr[i]!=str){
						$("#"+arr[i]).attr("src", "ico/"+arr[i]+".bmp");
					}
				}
			}

			function mousePos(e){//返回鼠标横纵坐标
				var x,y;
				e = e||window.event;
				return {
					x:e.clientX+document.body.scrollLeft,//窗口坐标加滚动条的坐标
					y:e.clientY+document.body.scrollTop  //窗口坐标加滚动条的坐标
				};
			}