import React from 'react';
import styled from 'styled-components';

const Layout = styled.div`
  width: 100%;
  height: calc(100vh - 100px);
  background-color: red;
  display: flex;
  justify-content: center;
  align-items: center;
`;

const MainDiv = styled.div`
  width: 60%;
  height: 60%;
  background-color: blue;
`;

const MemberMain = () => {
  return (
    <Layout>
      <MainDiv>zzzzz</MainDiv>
    </Layout>
  );
};

export default MemberMain;
