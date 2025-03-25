import React, { useEffect, useState } from 'react';
import styled from 'styled-components';

const MainDiv = styled.div`
  display: grid;
  width: 99%;
  height: 100%;
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
  display: flex;
  flex-direction: column;
  width: 45%;
  margin: 25px 0px;

  & > input,
  select {
    height: 34px;
    border: 1px solid gray;
    border-radius: 10px;
    margin-bottom: 10px;
    padding: 2px 10px;
    box-sizing: border-box;
  }

  & > button {
    margin-top: 8px;
    height: 37px;
    border-radius: 10px;
    background-color: white;
    border: 1px solid gray;
  }

  & > button:hover {
    background-color: #f7f7f7;
    cursor: pointer;
  }
`;

const Write = () => {
  const [bucketList, setBucketList] = useState([]);

  useEffect(() => {
    if (!localStorage.getItem('bucketList')) {
      localStorage.setItem('bucketList', JSON.stringify([]));
    }
    const lists = JSON.parse(localStorage.getItem('bucketList'));
    setBucketList(lists);
  }, []);

  const [voData, setVoData] = useState({});

  const f = (e) => {
    const bucketVo = {
      ...voData,
      [e.target.name]: e.target.value,
    };
    setVoData(bucketVo);
  };

  const write = () => {
    const lists = JSON.parse(localStorage.getItem('bucketList'));
    lists.push(voData);
    localStorage.setItem('bucketList', JSON.stringify(lists));
    alert('등록되었습니다!');

    setVoData({
      imgLink: '',
      title: '',
      category: '',
      priority: '',
      completeYn: '',
      completeDate: '',
    });
  };

  return (
    <>
      <MainDiv>
        <MenuNameDiv>버킷리스트 등록</MenuNameDiv>
        <ContentDiv>
          <select name="category" value={voData.category} onChange={f}>
            <option>-- 카테고리 선택 --</option>
            <option value="여행">여행</option>
            <option value="맛집/카페">맛집/카페</option>
            <option value="근교/명소">근교/명소</option>
            <option value="전시/실내">전시/실내</option>
            <option value="액티비티">액티비티</option>
          </select>
          <input
            type="text"
            name="title"
            placeholder="제목"
            value={voData.title}
            onChange={f}
          ></input>
          <input
            type="text"
            name="imgLink"
            placeholder="이미지 링크"
            value={voData.imgLink}
            onChange={f}
          ></input>
          <select name="priority" value={voData.priority} onChange={f}>
            <option>-- 우선순위 선택 --</option>
            <option value="높음">높음</option>
            <option value="보통">보통</option>
            <option value="낮음">낮음</option>
          </select>
          <select name="completeYn" value={voData.completeYn} onChange={f}>
            <option>-- 완료여부 선택 --</option>
            <option value="미완료">미완료</option>
            <option value="완료">완료</option>
          </select>
          <input
            type="date"
            name="completeDate"
            value={voData.completeDate}
            onChange={f}
          ></input>
          <button onClick={write}>등록</button>
        </ContentDiv>
      </MainDiv>
    </>
  );
};

export default Write;
