package com.kh.app0120stomp.ws;

import lombok.RequiredArgsConstructor;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.messaging.SessionConnectEvent;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class ChatController {

    private final SimpMessageSendingOperations messageSendingOperations;

    // 연결 수립 되었을 때 동작
    @EventListener
    public void handleConnect(SessionConnectEvent event){
        System.out.println("[웹소켓 연결 성공] event ::: " + event);
    }

    // 연결 끊겼을 때 동작
    @EventListener
    public void handleDisconnect(SessionDisconnectEvent event){
        System.out.println("[웹소켓 연결 끊김] event ::: " + event);
    }

    // 메세지 수신 및 발신
    @MessageMapping("/java")
    public void m01(Map<String,String> map){
        handleMsg(map);
    }

    // 메세지 수신 및 발신
    @MessageMapping("/oracle")
    public void m02(Map<String,String> map){
        handleMsg(map);
    }

    // 메세지 수신 및 발신
    @MessageMapping("/kh")
    public void m03(Map<String,String> map){
        handleMsg(map);
    }

    public void handleMsg(Map<String,String> map){
        System.out.println("메세지 수신 ::: " + map.get("payload"));
        String channelId = map.get("channelId");
        String topic = map.get("topic");
        messageSendingOperations.convertAndSend("/sub/"+ topic +"/" + channelId, map);
    }
}
