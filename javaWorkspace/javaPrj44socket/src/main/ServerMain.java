package main;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerMain {

	public static void main(String[] args) throws Exception {
		
		System.out.println("==== ServerMain ====");
		
		// 12345 포트에 서버소켓 생성
		ServerSocket ss = new ServerSocket(12345); 
		
		// 서버소켓한테 연결 대기하라고 명령
		Socket socket = ss.accept();
		
		System.out.println(socket + " 연결됨");
		
		// receive
		// 데이터를 보낼 통로 준비
		// 소켓 통로를 get하여 is 변수에 저장
		InputStream is = socket.getInputStream();
		
		// 통로에서 데이터를 읽기 위한 도구 준비
		InputStreamReader isr = new InputStreamReader(is);
		
		BufferedReader br = new BufferedReader(isr);
		
		String str = br.readLine();
		System.out.println("클라이언트로부터 전달받은 메시지 : " + str);
	}

}
