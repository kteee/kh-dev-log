import React, { useState } from 'react';
import styled from 'styled-components';
import Header from '../components/Header';
import Side from '../components/Side';
import Main from '../components/Main';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Shorts from '../components/Shorts';

const LayoutDiv = styled.div`
  display: grid;
  grid-template-rows: 60px 1fr;
  grid-template-columns: 250px 1fr;
  width: 100%;
  height: 100%;
  background-color: ${(props) => {
    return props.theme === 'dark' ? 'black' : 'white';
  }};
  color: ${(props) => {
    return props.theme === 'dark' ? 'white' : 'black';
  }};

  & div {
    color: ${(props) => {
      return props.theme === 'dark' ? 'white' : 'black';
    }};
  }

  & .modeIcon {
    filter: ${(props) => {
      return props.theme === 'dark' ? 'brightness(0) invert(1)' : 'light';
    }};
  }
`;

const ModeButton = styled.button`
  width: 90px;
  height: 32px;
  top: 15px;
  background-color: white;
  border: 1px solid lightgray;
  border-radius: 20px;
  font-size: 14px;

  &:hover {
    background-color: #f7f7f7;
    cursor: pointer;
  }
`;

const Home = () => {
  const [theme, setTheme] = useState('white');
  const [mode, setMode] = useState('DarkMode');

  function changeMode() {
    if (theme === 'dark') {
      setTheme('light');
      setMode('DarkMode');
    } else {
      setTheme('dark');
      setMode('LightMode');
    }
  }

  return (
    <BrowserRouter>
      <LayoutDiv theme={theme}>
        <Header theme={theme}>
          <ModeButton onClick={changeMode}>{mode}</ModeButton>
        </Header>
        <Side theme={theme}></Side>
        <Routes>
          <Route path="/" element={<Main />} />
          <Route path="/shorts" element={<Shorts />} />
        </Routes>
      </LayoutDiv>
    </BrowserRouter>
  );
};

export default Home;
