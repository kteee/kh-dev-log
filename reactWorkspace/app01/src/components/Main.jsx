import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import Category from './Category';
import Content from './Content';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

const MainDiv = styled.div`
  display: grid;
  width: 99%;
  height: 100%;
  grid-template-columns: 1fr;
  grid-template-rows: 48px 1fr;
  padding: 0px 5px;
`;

const CategoryDiv = styled.div`
  display: flex;
`;

const ContentDiv = styled.div`
  display: grid;
  width: 100%;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: auto;
  row-gap: 40px;
  margin-top: 25px;
  justify-content: space-evenly;
`;

const Main = () => {
  const [cateVoList, setCateVoList] = useState([]);
  const [contentVoList, setContentVoList] = useState([]);

  useEffect(() => {
    fetch('http://127.0.0.1:8080/api/youtube/category')
      .then((resp) => resp.json())
      .then((data) => {
        setCateVoList(data);
        console.log(data);
      });
  }, []);

  useEffect(() => {
    fetch('http://127.0.0.1:8080/api/youtube')
      .then((resp) => resp.json())
      .then((data) => {
        setContentVoList(data);
        console.log(data);
      });
  }, []);

  return (
    <MainDiv>
      <CategoryDiv>
        {cateVoList.map((vo) => {
          return <Category cateName={vo.name}></Category>;
        })}
      </CategoryDiv>
      <ContentDiv>
        {contentVoList.map((vo) => {
          return (
            <Content
              imgsrc={vo.sumnail}
              title={vo.title}
              writer={vo.writer}
              views={vo.views}
              enrollDate={vo.enrollDate}
            ></Content>
          );
        })}
      </ContentDiv>
    </MainDiv>
  );
};

export default Main;
