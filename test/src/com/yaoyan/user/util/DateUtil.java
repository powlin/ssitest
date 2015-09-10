package com.yaoyan.user.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间工具类
 * @author LYY
 *
 */
public class DateUtil {

	/**
	 * 作用：获取当前时间的字符串格式化
	 * 格式：yyyy-MM-dd hh:mm:ss
	 * @return
	 */
	public static String getNowTimeString() {
		Date date = new Date();
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
	}

	/**
	 * 比较两个时间字符串大小（后面 - 前面）
	 * @param lastEdition 最后编辑时间
	 * @param nowTimeString 当前时间
	 * @return
	 */
	public static boolean compareTimeString(String lastEdition, String nowTimeString) throws Exception{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date1 = simpleDateFormat.parse(lastEdition);
		Date date2 = simpleDateFormat.parse(nowTimeString);
		if((date2.getTime() - date1.getTime()) >= 1000*60*30){//三十分钟的毫秒数
			return true;
		}
		return false;
	}
	
	/**
	 * 格式化时间
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String formatString(String dateStr) throws Exception{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date parse = sdf.parse(dateStr);
		String format = sdf.format(parse);//转化为日期后再格式化
		return format;
	}


}
