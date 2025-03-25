import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const Layout = styled.div`
  width: 800px;
  height: 50px;
  border: 1px solid black;
  display: flex;
  justify-content: space-around;
  font-size: 2em;
  font-weight: 900;
`;

const Navi = () => {
  return (
    <Layout>
      <Link to={"notice"}>공지사항</Link>
      <Link to={"board"}>게시판</Link>
      <Link to={"gallery"}>갤러리</Link>
      <Link to={"member"}>멤버</Link>
    </Layout>
  );
};

export default Navi;