import React, { useEffect, useState } from 'react';

const BoardList = () => {
  console.log('BoardList render~ ');

  const [voList, setVoList] = useState([]);

  const url = 'http://192.168.40.44:8080/api/board';
  const options = {};

  useEffect(() => {
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        setVoList(data);
      });
  }, []);

  return (
    <>
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
    </>
  );
};

export default BoardList;
