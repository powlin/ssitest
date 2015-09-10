$(document).ready(function(){
	$("#logoutA").click(function(){
		if(confirm("是否确认退出？")){
			location.href="myUser!logout";
		}else{
			return;
		}
	});
	
	$("#getValBtn").click(function(){
		$("#valGetting").removeClass("hidden_btn");
		$("#getValBtn").addClass("hidden_btn");
		if(checkall()){
			var mailbox = $("#mailbox").val();
			$.post(
				"myUser!sendMail",
				{
					mailbox: mailbox
				},
				function(data){
					if(data == "y"){
						$("#yesBtn").removeClass("hidden_btn");
						$("#valGetting").addClass("hidden_btn");
						$("#getValBtn").addClass("hidden_btn");
						
					}else{
						$("#yesBtn").addClass("hidden_btn");
						$("#valGetting").addClass("hidden_btn");
						$("#getValBtn").removeClass("hidden_btn");
					}
				}
			);
		}else{
			$("#valGetting").removeClass("hidden_btn");
			$("#getValBtn").addClass("hidden_btn");
		}
	});
	
	$("#yesBtn").click(function(){
		if(checkall()){
			$("#registerAllForm").submit();
		}
	});
	
});

function checkall(){
	var realname = $("#realname").val();
	if(realname == ""){
		alert("姓名不能为空！");
		return false;
	}
	var mailbox = $("#mailbox").val();
	if(mailbox == ""){
		alert("邮箱不能为空！");
		return false;
	}
	if(!checkMail(mailbox)){
		alert("邮箱格式不正确！");
		return false;
	}
	return true;
}

//验证邮箱
function checkMail(mail) {
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (filter.test(mail))
		return true;
	else {
		return false;
	}
}