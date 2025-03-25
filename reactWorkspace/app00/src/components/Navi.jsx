import React from 'react';
import { BrowserRouter, Link } from 'react-router-dom';

const Navi = () => {
  return (
    <>
      <Link to="/board">게시판</Link>
      <Link to="/notice">공지사항</Link>
      <Link to="/login">로그인</Link>
    </>
  );
};

export default Navi;
