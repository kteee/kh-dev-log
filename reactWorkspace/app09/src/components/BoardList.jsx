import React, { useEffect, useState } from 'react';
import useKhFetch from '../hooks/useKhFetch';

const BoardList = () => {
  const url = 'http://192.168.40.44:8080/api/board';
  const options = {};
  const { isLoading, state: voList } = useKhFetch(url, options);

  return (
    <>
      <h1>로딩중 여부 : {isLoading ? 'Y' : 'N'}</h1>
      {isLoading ? (
        <h1>로딩중...</h1>
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
