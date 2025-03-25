import React, { useEffect, useState } from 'react';

const BoardDetail = () => {
  console.log('BoardDetail render~ ');

  const [vo, setVo] = useState({});

  const url = 'http://192.168.40.44:8080/api/board/24';
  const options = {};

  useEffect(() => {
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        setVo(data);
      });
  }, []);

  return (
    <>
      <h2>번호 : {vo.no}</h2>
      <h2>제목 : {vo.title}</h2>
      <h2>작성자 : {vo.writer}</h2>
    </>
  );
};

export default BoardDetail;
