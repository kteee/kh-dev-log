package main;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Main02 {

	public static void main(String[] args) throws IOException {

		System.out.println("==== I/O ====");
		
		// 파일에 있는 문자열 자바로 읽어오기
		
		// D 드라이브의 Hello.txt 파일을 객체로 준비
		File f = new File("D:" + File.separator + "hello.txt");
		
		// 파일 객체에 (문자열데이터를 읽어들이는) 통로 연결
		// FileReader fr = new FileReader(f);
		
		FileReader fr = new FileReader(f);
		BufferedReader br = new BufferedReader(fr);
		
		// 통로 이용하여 문자열 읽어오기	
		/*
		while(true) {
			int data = fr.read();
			if(data == -1) {
				break;
			}
			System.out.print((char)data);
		}
		*/
		
//		int data = 0;
//		while( (data) = fr.read() != -1 ) 
		
	
		String str = br.readLine();
		System.out.println(str);
	}

}
