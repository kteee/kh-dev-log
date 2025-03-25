import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';

const BoardDetail = () => {
  const navigate = useNavigate();
  const { no } = useParams();

  const [vo, setVo] = useState({});

  const url = `http://192.168.40.37:8080/api/board/${no}`;
  const options = {};

  useEffect(() => {
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
        setVo(data);
      });
  }, []);

  function del() {
    navigate(`/board/del/${vo.no}`);
  }

  return (
    <div>
      <h2>번호 : {vo.no}</h2>
      <h2>제목 : {vo.title}</h2>
      <h2>작성자 : {vo.writer}</h2>
      <button onClick={del}>삭제</button>
    </div>
  );
};

export default BoardDetail;
