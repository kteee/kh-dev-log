import React from 'react';
import styled from 'styled-components';

const LayoutDiv = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 1fr 1fr 1fr;
  place-items: center center;
  font-size: 14px;

  & a {
    color: black;
    text-decoration: none;
  }
`;

const Footer = () => {
  return (
    <LayoutDiv>
      <div>
        <a href="">회사소개</a>
        <span> | </span>
        <a href="">인재채용</a>
        <span> | </span>
        <a href="">제휴제안</a>
        <span> | </span>
        <a href="">이용약관</a>
        <span> | </span>
        <a href="">개인정보처리방침</a>
        <span> | </span>
        <a href="">청소년보호정책</a>
        <span> | </span>
        <a href="">고객센터</a>
      </div>
      <div>오시는길 : 서울특별시 강남구 테헤란로 123-123</div>
      <div><b>ⓒ KTE Corp.</b></div>
    </LayoutDiv>
  );
};

export default Footer;