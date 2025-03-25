import React, { useEffect, useState } from 'react';
import { Client } from '@stomp/stompjs';
import { useLocation } from 'react-router-dom';

const Chat = ({ topic }) => {
  console.log('Chat render~');

  const [inputStr, setInputStr] = useState('');
  const [stompClient, setStompClient] = useState(null);
  const [msgArr, setMsgArr] = useState([]);
  const channelId = '1';
  const location = useLocation();

  useEffect(() => {
    // 랜더링(마운트) 이후 실행될 내용

    // WS 연결
    const client = new Client({
      brokerURL: 'ws://127.0.0.1:8080/ws',
      onConnect: () => {
        // 수신
        // 웹소켓객체.구독(~~);
        client.subscribe(`/sub/${topic}/${channelId}`, (msg) => {
          setMsgArr((arr) => {
            return [...arr, msg.body];
          }); // 값을 넣어도 되고 함수의 리턴값으로 처리해도 된다
          // 바로 직전의 스테이트 값을 파라미터로 받아올 수 있다
          // 관습적으로 이전의 상태라는 뜻으로 prev 많이 씀
        });
      },
    });

    setStompClient(client);
    client.activate();

    // 언마운트 이후 실행될 내용
    return () => {
      console.log('클린업 함수 실행됨~~');
      client.deactivate();
    };
  }, [location.pathname]);

  // 발신
  function sendMsg() {
    stompClient.publish({
      destination: `/pub/${topic}`,
      body: JSON.stringify({
        payload: inputStr,
        topic: topic,
        time: new Date(),
        channelId: channelId,
      }),
    });
  }

  function handleSubmit(e) {
    e.preventDefault();
    // 웹소켓을 통해 메시지 전송
    sendMsg();
    setInputStr('');
  }

  return (
    <>
      <h1>{topic} 토픽에 대한 채팅방</h1>
      <form action="" onSubmit={handleSubmit}>
        <input
          type="text"
          value={inputStr}
          onChange={(e) => {
            setInputStr(e.target.value);
          }}
        />
        <input type="submit" value={'전송'} />
      </form>
      <ul>
        {msgArr.map((msg, idx) => {
          return <li key={idx}>{msg}</li>;
        })}
      </ul>
    </>
  );
};

export default Chat;
