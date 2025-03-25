import React from 'react';
import styled from 'styled-components';
import Display from '../components/Display';
import KhBnt from '../components/KhBtn';

const Layout = styled.div`
  display: grid;
  width: 800px;
  height: 600px;
  grid-template-rows: repeat(3, 1fr);
  grid-template-columns: 1fr 1fr;
  place-items: center center;
  border: 5px solid blue;
  margin: auto;

  & > div:first-child {
    grid-column: span 2;
  }
`;

const NumberPage = ({ children }) => {
  return (
    <>
      <h1>넘버페이지~</h1>
      <Layout>
        <Display></Display>
        <KhBnt type="plusOne">+1</KhBnt>
        <KhBnt type="minusOne">-1</KhBnt>
        <KhBnt type="plusTwo">+2</KhBnt>
        <KhBnt type="minusTwo">-2</KhBnt>
      </Layout>
    </>
  );
};

export default NumberPage;
