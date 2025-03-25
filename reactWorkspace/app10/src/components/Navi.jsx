import React from 'react';
import styled from 'styled-components';
import { Link } from 'react-router-dom';

const Layout = styled.div`
  height: 50px;
  border: 3px dashed lightgray;
  box-sizing: border-box;
  display: flex;
  justify-content: space-around;
  align-items: center;
`;

const Navi = () => {
  return (
    <Layout>
      <Link to="/board/list">게시글 목록 조회</Link>
      <Link to="/board/detail">게시글 상세 조회</Link>
      <Link to="/board/write">게시글 등록</Link>
      <Link to="/board/delete">게시글 삭제</Link>
    </Layout>
  );
};

export default Navi;
