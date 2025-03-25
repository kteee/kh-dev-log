import React, { useEffect, useState } from 'react';

const BoardDetail = () => {
  let isMounted = true;
  const [vo, setVo] = useState([]);
  const [isLoading, setLoading] = useState(true);

  useEffect(() => {
    fetch('http://192.168.40.44:8080/api/board/1', {})
      .then((resp) => resp.json())
      .then((data) => {
        if (isMounted) {
          setVo(data);
          setLoading(false);
        }
      });
  }, []);

  return (
    <>
      <h1>게시글 상세조회</h1>
      {isLoading ? (
        <h2>로딩중...</h2>
      ) : (
        <>
          <h3>번호 : {vo.no}</h3>
          <h3>제목 : {vo.title}</h3>
          <h3>작성자 : {vo.writer}</h3>
        </>
      )}
    </>
  );
};

export default BoardDetail;
