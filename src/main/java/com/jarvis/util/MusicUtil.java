package com.jarvis.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

/**
 * 音乐歌词解析工具类
 * 
 * @author Jarvis
 * @version v1.0
 */
public class MusicUtil {
	/**
	 * 获取音乐歌词
	 *
	 * 
	 * @param request
	 * @return String 歌词
	 */
	public static String getLrc(HttpServletRequest request) {

		StringBuffer buffer = new StringBuffer();

		// 获取音乐名称
		String musicName = request.getParameter("name");
		// 获取音乐文件对应的歌词路径
		String filePath = request.getRealPath("mp3") + "/" + musicName + ".lrc";
		FileInputStream fileInputStream = null;
		BufferedReader bReader = null;
		InputStreamReader isr = null;
		// 开始读取歌词文件
		try {
			fileInputStream = new FileInputStream(filePath);
			isr = new InputStreamReader(fileInputStream, "utf-8");
			bReader = new BufferedReader(isr);
			// 建立一个临时文件
			String temp = null;
			while ((temp = bReader.readLine()) != null) {
				buffer.append(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (bReader != null) {
				try {
					bReader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (fileInputStream != null) {
				try {
					fileInputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (isr != null) {
				try {
					isr.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return buffer.toString();
	}

	public static void main(String[] args) {
		System.out.println();
	}
}
