import React from 'react';
import { Route, Routes } from 'react-router-dom';
import styled from 'styled-components';
import MemberLogin from '../../components/member/MemberLogin';
import MemberJoin from '../../components/member/MemberJoin';
import MemberMypage from '../../components/member/MemberMypage';

const Layout = styled.div`
  width: 100%;
  height: calc(100vh - 100px);
  display: flex;
  justify-content: center;
  align-items: center;
`;

const MemberPage = () => {
  return (
    <Layout>
      <Routes>
        <Route path="login" element={<MemberLogin />} />
        <Route path="join" element={<MemberJoin />} />
        <Route path="" element={<MemberMypage />} />
      </Routes>
    </Layout>
  );
};

export default MemberPage;
