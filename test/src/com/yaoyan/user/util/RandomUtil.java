package com.yaoyan.user.util;

import java.util.Random;

public class RandomUtil {

	private static final String randStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	public static String getRandom(int num) {
		Random random = new Random();
		int nextInt = 0;
		StringBuilder result = new StringBuilder();
		for(int i = 0;i < num; i++){
			nextInt = random.nextInt(randStr.length());
			result.append(randStr.charAt(nextInt));
		}
		return result.toString();
	}

}
