import React, { useEffect, useState } from 'react';

const BoardList = () => {
  let isMounted = true;
  const [voList, setVoList] = useState([]);
  const [isLoading, setLoading] = useState(true);

  useEffect(() => {
    fetch('http://192.168.40.44:8080/api/board', {})
      .then((resp) => resp.json())
      .then((data) => {
        if (isMounted) {
          setVoList(data);
          setLoading(false);
        }
      });
    return () => {
      isMounted = false;
    };
  }, []);

  return (
    <>
      <h1>게시글 목록 조회</h1>
      {isLoading ? (
        <h3>로딩중...</h3>
      ) : (
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
            </tr>
          </thead>
          <tbody>
            {voList.map((vo) => {
              return (
                <tr key={vo.no}>
                  <td>{vo.no}</td>
                  <td>{vo.title}</td>
                  <td>{vo.writer}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      )}
    </>
  );
};

export default BoardList;
