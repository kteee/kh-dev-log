import React from 'react';
import styled from 'styled-components';
import { useNumberContext } from '../context/NumberContext';

const StyledDisplay = styled.div`
  width: 80%;
  height: 80px;
  border: 3px solid black;
  margin: auto;
  font-size: 3em;
  font-weight: 900;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-right: 25px;
`;

const Display = ({ children }) => {
  const v = useNumberContext();
  return <StyledDisplay>넘버 컨텍스트의 밸류 : {v.num}</StyledDisplay>;
};

export default Display;
