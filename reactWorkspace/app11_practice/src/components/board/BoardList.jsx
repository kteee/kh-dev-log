import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const StyledTable = styled.table`
  border: 1px solid black;
  border-collapse: collapse;

  & tr,
  th,
  td {
    border: 1px solid black;
    border-collapse: collapse;
  }
`;

const BoardList = () => {
  const [voList, setVoList] = useState([]);

  const url = 'http://192.168.40.37:8080/api/board';
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
      <StyledTable>
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
                <td>
                  <Link to={`/board/detail/${vo.no}`}>{vo.no}</Link>
                </td>
                <td>{vo.title}</td>
                <td>{vo.writer}</td>
              </tr>
            );
          })}
        </tbody>
      </StyledTable>
    </>
  );
};

export default BoardList;
