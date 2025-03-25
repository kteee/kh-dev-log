import React from 'react';
import {BrowserRouter , Routes, Route, useParams} from 'react-router-dom';

const NoticeList = () => {

  const obj = useParams();
  console.log(obj.x);

  return (
    <h2>공지사항 리스트</h2>
  );
};

export default NoticeList;