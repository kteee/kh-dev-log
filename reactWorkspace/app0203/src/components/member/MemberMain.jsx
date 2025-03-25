import React from 'react';
import { Link, Route, Routes } from 'react-router-dom';
import styled from 'styled-components';
import MemberJoin from './MemberJoin';
import MemberLogin from './MemberLogin';

const Layout = styled.div`
  width: 60%;
  height: 100%;
  box-sizing: border-box;
  border: 3px solid black;
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  place-items: center center;
`;

const MemberMain = () => {
  return (
    <>
      <Routes>
        <Route path="join" element={<MemberJoin />} />
        <Route path="login" element={<MemberLogin />} />
        <Route path="mypage" element={<h1>마이페이지</h1>} />
        <Route path="quit" element={<h1>회원탈퇴</h1>} />
        <Route
          path="*"
          element={
            <Layout>
              <Link to={'/member/join'}>회원가입</Link>
              <Link to={'/member/login'}>로그인</Link>
              <Link to={'/member/mypage'}>마이페이지</Link>
              <Link to={'/member/quit'}>회원탈퇴</Link>
            </Layout>
          }
        />
      </Routes>
    </>
  );
};

export default MemberMain;
