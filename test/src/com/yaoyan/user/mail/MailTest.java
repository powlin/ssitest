package com.yaoyan.user.mail;

public class MailTest {

	/**
	 * 传入参数调用该方法发送mail
	 * @param toaddress 发送给
	 * @param subject 主题
	 * @param content 内容
	 */
	public static boolean sendMail(String toAddress, String subject, String content){
		try{
			// 这个类主要是设置邮件
			MailSenderInfo mailInfo = new MailSenderInfo();
			mailInfo.setMailServerHost("smtp.qq.com");
			mailInfo.setMailServerPort("25");
			mailInfo.setValidate(true);
			mailInfo.setUserName("1321967761@qq.com");
			mailInfo.setPassword("linyy18258155523");// 您的邮箱密码
			mailInfo.setFromAddress("1321967761@qq.com");
			mailInfo.setToAddress(toAddress);
			mailInfo.setSubject(subject);
			mailInfo.setContent(content);
			// 这个类主要来发送邮件
			SimpleMailSender sms = new SimpleMailSender();
			sms.sendTextMail(mailInfo);// 发送文体格式
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
}
