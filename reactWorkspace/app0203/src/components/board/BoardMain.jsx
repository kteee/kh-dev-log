import React from 'react';
import { Link, Route, Routes } from 'react-router-dom';
import BoardWrite from './BoardWrite';

const BoardMain = () => {
  return (
    <>
      <Routes>
        <Route path="write" element={<BoardWrite />} />
        <Route path="list" element={<h1>게시글 목록</h1>} />
        <Route path="edit" element={<h1>게시글 수정</h1>} />
        <Route path="delete" element={<h1>게시글 삭제</h1>} />
        <Route
          path="*"
          element={
            <div>
              <Link to={'/board/write'}>WRITE</Link>
              <br />
              <Link to={'/board/list'}>LIST</Link>
            </div>
          }
        />
      </Routes>
    </>
  );
};

export default BoardMain;
