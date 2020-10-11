package util;

import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.SourceDataLine;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;


public class LrcSameAsSong {
	public final Pattern pattern = Pattern.compile("(?<=//[).*?(?=//])");
	public AudioInputStream inputStream;
	public SourceDataLine dataLine;

	public AudioFormat fileFormat;

	/*
	 * 读取歌词文件
	 */
	public static String readFile(String file2) {
		//获取文件的具体位置
		
		StringBuffer bs = new StringBuffer();
		BufferedReader bf = null;							//创建文件读取流
		try {

			bf = new BufferedReader(new InputStreamReader(new FileInputStream(file2), "gbk"));  // 读取文件
			String text = null;
			
			
			
			while ((text = bf.readLine()) != null) {
				
				bs.append(text).append("\n");
			}
			System.out.println(bs.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				bf.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bs.toString();
	}
}
