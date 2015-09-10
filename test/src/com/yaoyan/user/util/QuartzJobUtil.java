package com.yaoyan.user.util;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class QuartzJobUtil {

	public void work() throws Exception {
		String[] jsoup = JsoupUtil.getMoneyDataArrByJsoup();
		System.out.println(jsoup[0] + "   " + jsoup[1]);

		/*
		 * 网页抓取返回的数据，基本思想为一天抓取一次 然后将抓取的数据使用JDBC保存到数据库
		 */
		
		Connection conn = DBUtil.getConnection();
		String sql = "insert into moneydata (moneyPer1W, moneyRate, createDate) values (?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, jsoup[0]);
		ps.setString(2, jsoup[1]);
		ps.setString(3, DateUtil.getNowTimeString());
		ps.execute();
		if(ps != null){
			ps.close();
		}
		if(conn != null){
			conn.close();
		}
	}
}
