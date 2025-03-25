import React, { useState } from 'react';
import styled from 'styled-components';

const ItemDiv = styled.div`
  width: 305px;
  height: 260px;
  display: flex;
  flex-direction: column;
  color: ${(props) => {
    return props.theme === 'dark' ? 'white' : 'black';
  }};
`;

const SumnailImg = styled.img`
  width: 305px;
  height: 170px;
  object-fit: cover;
  object-position: center center;
  border-radius: 10px;
`;

const ItemBottomDiv = styled.div`
  display: flex;
  width: 100%;
`;

const BottomRightDiv = styled.div`
  display: flex;
  flex-direction: column;
  margin: 0px 8px;
  width: 254px;
`;

const TitleTextDiv = styled.div`
  margin: 2px 0px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
`;

const SmallTextDiv = styled.div`
  font-size: 14px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin: 1px 0px;
`;

const ProfileImg = styled.img`
  width: 37px;
  height: 37px;
  margin: 3px 0px;
`;

const Content = ({ imgsrc, title, writer, views, enrollDate }) => {
  const [num, setNum] = useState(Number(views));

  return (
    <ItemDiv
      onClick={() => {
        setNum(num + 1);
      }}
    >
      <div>
        <SumnailImg src={imgsrc} />
      </div>
      <ItemBottomDiv>
        <ProfileImg src="https://img.icons8.com/?size=100&id=z-JBA_KtSkxG&format=png&color=000000" />
        <BottomRightDiv>
          <TitleTextDiv>{title}</TitleTextDiv>
          <SmallTextDiv>{writer}</SmallTextDiv>
          <SmallTextDiv>
            {num} views · {enrollDate}
          </SmallTextDiv>
        </BottomRightDiv>
      </ItemBottomDiv>
    </ItemDiv>
  );
};

export default Content;
