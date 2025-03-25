package main;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;

public class ClientMain {

	public static void main(String[] args) throws Exception {
		
		System.out.println("==== ClientMain ====");
		
		String ip = "192.168.40.105";  // 내컴퓨터ip = "localhost" = "127.0.0.1"
		int port = 12345;
		
		Socket s = new Socket(ip, port);
		
		System.out.println("연결 성공!");
		
		// send
		// 데이터를 보낼 통로 준비
		// 소켓 통로를 get하여 os 변수에 저장
		OutputStream os = s.getOutputStream();
		
		// 통로에다가 데이터를 쓰기 위한 도구 준비
		PrintWriter pw = new PrintWriter(os, true); // auto flush
		
		// 통로에다가 데이터 쓰기
		pw.println("hello~~");
		
		// pw.flush();
		System.out.println("메세지 전송 완료!");
		
	}
}
