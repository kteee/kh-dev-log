package main;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Main {

	public static void main(String[] args) throws IOException {

		System.out.println("==== I/O ====");
		
		// 자바에서 파일로 문자열 내보내기(write) 하기
		
		// D 드라이브의 Hello.txt 파일을 객체로 준비
		// File f = new File("D:\\hello.txt");   \ 하나만 입력하면 이스케이프문자로 인식 (두번 쳐야함)
		// OS 상관없이 파일 경로 구분하기 : File.separator 이용
		File f = new File("D:" + File.separator +"hello.txt");  
		
		// 파일 객체에 (문자열데이터를 내보내는) 통로 연결
		FileWriter fw = new FileWriter(f);
		
		// 통로 이용하여 문자열 내보내기	
		fw.write("zzzzzzzzzzzzzzzzzzfffff"); // 여기까지는 아직 통로에 멈춰있음
		//fw.flush(); // 밀어내기 까지 해야지 메모장에 저장 됨
		
		fw.close(); // 통로 닫기
		// close 안에는 flush가 들어있어서 close할 경우 flush 안해도 됨
	}
}
