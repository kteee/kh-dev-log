import React from 'react';
import styled from 'styled-components';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Header from '../components/Header';
import Side from '../components/Side';
import Main from '../components/Main';
import Write from '../components/Write';
import { useSelector } from 'react-redux';

const OuterDiv = styled.div`
  width: 100%;
  height: 100vh;
  background-color: ${(props) => {
    return props.theme === 'dark' ? 'black' : 'white';
  }};
  color: ${(props) => {
    return props.theme === 'dark' ? 'white' : 'black';
  }};
`;

const LayoutDiv = styled.div`
  display: grid;
  grid-template-rows: 95px 1fr;
  grid-template-columns: 240px 1fr;
  width: 82%;
  height: 100%;
  margin: auto;
`;

const Home = () => {
  const theme = useSelector((state) => {
    return state.theme;
  });

  return (
    <BrowserRouter>
      <OuterDiv theme={theme}>
        <LayoutDiv>
          <Header />
          <Side />
          <Routes>
            <Route path="/" element={<Main />} />
            <Route path="/write" element={<Write />} />
          </Routes>
        </LayoutDiv>
      </OuterDiv>
    </BrowserRouter>
  );
};

export default Home;
