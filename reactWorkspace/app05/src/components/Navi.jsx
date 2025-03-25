import React from 'react';
import styled from 'styled-components';

const LayoutDiv = styled.div`
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-rows: 1fr;
  grid-template-columns: repeat(4, 1fr);
  place-items: center center;
  font-size: 1.6em;
  font-weight: 900;

  & > a {
    text-decoration: none;
    color:black;
  }
`;

const Navi = () => {
  return (
    <LayoutDiv>
      <a href="">게시판</a>
      <a href="">공지사항</a>
      <a href="">갤러리</a>
      <a href="">경조사</a>
    </LayoutDiv>
  );
};

export default Navi;