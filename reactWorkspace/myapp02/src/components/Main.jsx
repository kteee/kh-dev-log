import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import Content from './Content';

const MainDiv = styled.div`
  display: grid;
  width: 99%;
  height: fit-content;
  grid-template-columns: 1fr;
  grid-template-rows: 48px 1fr;
  padding: 0px 5px;
`;

const MenuNameDiv = styled.div`
  display: flex;
  font-size: 1.5em;
  border-bottom: 1px solid gray;
`;

const ContentDiv = styled.div`
  display: grid;
  width: 100%;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-template-rows: fit;
  row-gap: 40px;
  margin-top: 25px;
  justify-content: space-evenly;
`;

const Main = () => {
  const [voList, setVoList] = useState([]);

  useEffect(() => {
    if (!localStorage.getItem('bucketList')) {
      localStorage.setItem('bucketList', JSON.stringify([]));
    }
    const lists = JSON.parse(localStorage.getItem('bucketList'));
    setVoList(lists);
  }, []);

  const del = (index) => {
    const confirmDelete = window.confirm('삭제하시겠습니까?');
    if (confirmDelete) {
      const lists = [...voList];
      lists.splice(index, 1);
      setVoList(lists);
      localStorage.setItem('bucketList', JSON.stringify(lists));
    }
  };

  return (
    <MainDiv>
      <MenuNameDiv>버킷리스트 목록</MenuNameDiv>
      <ContentDiv>
        {voList.map((vo, index) => {
          return (
            <Content
              key={index}
              category={vo.category}
              title={vo.title}
              imgLink={vo.imgLink}
              priority={vo.priority}
              completeYn={vo.completeYn}
              completeDate={vo.completeDate}
              del={() => del(index)}
            />
          );
        })}
      </ContentDiv>
    </MainDiv>
  );
};

export default Main;
