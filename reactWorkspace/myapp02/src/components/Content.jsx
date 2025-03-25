import React from 'react';
import styled from 'styled-components';
import { useSelector } from 'react-redux';

const ItemDiv = styled.div`
  width: 300px;
  height: 260px;
  display: flex;
  flex-direction: column;
`;

const SumnailImg = styled.img`
  width: 300px;
  height: 170px;
  object-fit: cover;
  object-position: center center;
  border-radius: 10px;
  margin-bottom: 2px;
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
  margin: 4px 0px;
  font-size: 17px;
`;

const PriorityDiv = styled.div`
  margin: 3px 0px;
  font-size: 18px;
  color: #ffc934;
  width: 30px;
  display: flex;
  align-items: start;
  justify-content: center;
`;

const SmallTextDiv = styled.div`
  font-size: 15px;
  color: ${(props) => {
    return props.theme === 'dark' ? '#cacaca' : '#525252';
  }};
  margin: 2px 0px;
`;

const Content = ({
  imgLink,
  title,
  category,
  priority,
  completeYn,
  completeDate,
  del,
}) => {
  const theme = useSelector((state) => {
    return state.theme;
  });

  const getStar = (priority) => {
    if (priority === '높음') {
      return (
        <>
          ★
          <br />★<br />★
        </>
      );
    } else if (priority === '보통') {
      return (
        <>
          ★
          <br />★
        </>
      );
    } else if (priority === '낮음') {
      return '★';
    }
    return '';
  };

  return (
    <ItemDiv onClick={del}>
      <div>
        <SumnailImg src={imgLink} />
      </div>
      <ItemBottomDiv>
        <PriorityDiv>{getStar(priority)}</PriorityDiv>
        <BottomRightDiv>
          <TitleTextDiv>{title}</TitleTextDiv>
          <SmallTextDiv theme={theme}>{category}</SmallTextDiv>
          <SmallTextDiv theme={theme}>
            {completeYn} ({completeDate ? completeDate : '-'})
          </SmallTextDiv>
        </BottomRightDiv>
      </ItemBottomDiv>
    </ItemDiv>
  );
};

export default Content;
