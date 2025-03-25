import React from 'react';
import styled from 'styled-components';

const LayoutDiv = styled.div`
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-rows: 1fr;
  grid-template-columns: 3fr 4fr 3fr;
`;

const LogoDiv = styled.div`
  width: 100%;
  height: 100%;
  background-image: url("https://images.velog.io/images/shinyejin0212/post/6f6cc820-4724-485f-9f19-e08b352cfb69/react.png");
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center center;
`;

const LoginDiv = styled.div`
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-rows: repeat(3, 1fr);
  grid-template-columns: 1fr 1fr;
  place-items: center center;
`;

const KhInput = styled.input`
  grid-column: span 2;
  width: 80%;
  height: 70%;
  border: none;
  border-bottom: 1px dashed black;
`;

const KhBtn = styled.button`
  background-color: #000000;
  color: white;
  border: none;
  font-weight: 900;
  font-size: 15px;
`;


const Header = () => {
  return (
    <LayoutDiv>
      <div></div>
      <LogoDiv></LogoDiv>
      <LoginDiv>
        <KhInput placeholder='아이디'></KhInput>
        <KhInput placeholder='비밀번호'></KhInput>
        <KhBtn>회원가입</KhBtn>
        <KhBtn>로그인</KhBtn>
      </LoginDiv>
    </LayoutDiv>
  );
};

export default Header;