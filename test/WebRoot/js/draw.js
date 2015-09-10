var judge_click;//�ж��Ƿ���
			var canvas, ctx;
			var cursor_type;//�������
			var cursor_arr=new Array("pencil", "eraser");//�������
			var oldx,oldy;//��¼����
			var x_else=10,y_else=12;//����ƫ��
			var x_eraser_else=8,y_eraser_else=26,init_r=15;//Բ�� ����ƫ�ƺͳ�ʼ�뾶
			var bgcolor="#FFF";//����ɫ
			var color;//��ɫ
			var border_color="red";

			$(document).ready(function(){
				canvas=document.getElementById("myCanvas");
				ctx = canvas.getContext('2d');
				judge_click=0;
				change_cursor(0);//��ʼ�����
				change_color("000000");
				$("td.colorClass:first").css("border-color", border_color);//��ʼ��ѡ����ɫ
				
				//�����ɫ
				$("td.colorClass").click(function(){
					$("td.colorClass").removeAttr("style");
					$(this).css("border-color", border_color);
					$("#selectImg").attr("src", $(this).children().attr("src"));
					var color_num=$("#selectImg").attr("src").replace("ico/color_", "").replace(".bmp", "");//��ȡ��ɫ��ֵ
					color="#"+color_num;
				});
				
			});
			function startDraw(e){
				judge_click=1;
				oldx=mousePos(e).x-x_else;//�������ʱ����������ֵ
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
			function drawCanvas(e) {//��ͼ
				if(judge_click==0){//��ʾ���δ���
					return;
				}
				//��ȡ����
				x=mousePos(e).x;
				y=mousePos(e).y;
				var r;//�뾶(�������Ƥ���뾶�Դ�)
				ctx.beginPath();
				if(cursor_type==0){
					x=x-x_else;
					y=y-y_else;
					ctx.strokeStyle=color;//��������ɫ����
					ctx.moveTo(oldx, oldy);
					ctx.lineTo(x, y);
					ctx.stroke();
					oldx=x;//��¼���һ�ε�����
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

			function load_page(){//ҳ��ˢ��
				location.reload();
			}

			//�ı����    0Ϊ��ʼֵ
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
			
			//�ı���ɫ
			function change_color(p_color){
				color="#"+p_color;
			}

			//ִ�иı�
			function execute_change(str, arr){
				canvas.style.cursor="url(ico/cursor_"+str+".bmp), default";
				$("#"+str).attr("src", "ico/"+str+"_click.bmp");
				for(var i=0;i<arr.length;i++){
					if(arr[i]!=str){
						$("#"+arr[i]).attr("src", "ico/"+arr[i]+".bmp");
					}
				}
			}

			function mousePos(e){//��������������
				var x,y;
				e = e||window.event;
				return {
					x:e.clientX+document.body.scrollLeft,//��������ӹ�����������
					y:e.clientY+document.body.scrollTop  //��������ӹ�����������
				};
			}