package com.kh.app0116websocket.home.ws;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
@RequiredArgsConstructor
public class KhChatHandler extends TextWebSocketHandler {

    private final List<WebSocketSession> sessionList = new ArrayList<>();
    private final ObjectMapper objectMapper;

    // 웹소켓 연결 완료
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        System.out.println("웹소켓 연결됨~~");

        sessionList.add(session);

        // 세션을 통해 메세지 보내기
        Map<String, String> map = new HashMap<>();
        map.put("nick", "[SYSTEM]");
        map.put("content", "채팅방에 입장하였습니다.");
        map.put("time", "");

        String jsonStr = objectMapper.writeValueAsString(map);

        TextMessage txtMsg = new TextMessage(jsonStr);
        session.sendMessage(txtMsg);

    }

    // 웹소켓 연결 끊김
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        System.out.println("웹소켓 연결 끊김..");
        sessionList.remove(session);
    }

    // 메시지 받았을 때
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // System.out.println("메시지 받음 : " + message);
        // System.out.println("메시지 받음 : " + message.getPayload());

        // http 세션의 nick을 websocket 세션으로 복사 (인터셉터 이용)
        // getAttributes 하면 http session의 모든 어트리뷰트들을 가져옴
        // HTTP 세션에서 데이터 꺼내기
        Map<String, Object> sessionAttrMap = session.getAttributes();
        String nick = (String) sessionAttrMap.get("nick");

        // JSON 문자열에서 필요한 데이터 꺼내기
        Map<String, String> map =objectMapper.readValue(message.getPayload(), Map.class);
        String content = map.get("content");

        // JSON 형식 문자열 만들기
        Map<String, String> msgMap = new HashMap<>();
        msgMap.put("nick", nick);
        msgMap.put("content", content);
        msgMap.put("time", System.currentTimeMillis()+"");
        String jsonStr = objectMapper.writeValueAsString(msgMap);

        // JSON 문자열 브로드캐스트
        broadcast(jsonStr);
    }

    // 연결된 모든 세션들에게 메세지 보내기
    private void broadcast(String message) throws IOException {
        // Broadcast
        for (WebSocketSession wss : sessionList) {
            TextMessage txtMsg = new TextMessage(message);
            wss.sendMessage(txtMsg);
        }
    }
}
