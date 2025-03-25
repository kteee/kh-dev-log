import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import Category from './Category';

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

const ShortsDiv = styled.div`
  display: flex;
  height: 100vh;
  justify-content: center;
  align-items: center;

  & img {
    border-radius: 10px;
  }
`;

const Shorts = () => {
  const [cateVoList, setCateVoList] = useState([]);

  useEffect(() => {
    fetch('http://127.0.0.1:8080/api/youtube/category')
      .then((resp) => resp.json())
      .then((data) => {
        setCateVoList(data);
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
      <ShortsDiv>
        <img src="/capture01.PNG" />
      </ShortsDiv>
    </MainDiv>
  );
};

export default Shorts;
