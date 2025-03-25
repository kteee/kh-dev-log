import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import BoardList from './BoardList';

const Navi = () => {
  const navigate = useNavigate();

  function f01() {
    navigate('/notice');
  }

  function f02() {
    navigate('/board');
  }

  return (
    <div>
      {/* <Link to={"/notice"}>공지사항</Link>
      <Link to={"/board"}>게시판</Link> */}
      <button onClick={f01}>공지사항</button>
      <button onClick={f02}>게시판</button>
    </div>
  );
};

export default Navi;
