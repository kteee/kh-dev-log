import React, { useContext } from 'react';
import styled from 'styled-components';
import { CalcContext } from '../pages/Calculator';

const DisplayDiv = styled.div`
  grid-column: span 4;
  border: 1px solid black;
  display: flex;
  justify-content: end;
  align-items: center;
  padding: 10px;
  font-size: 1.8em;
`;

const CalcDisplay = () => {
  const num1 = useContext(CalcContext)[0];
  return <DisplayDiv>{num1}</DisplayDiv>;
};

export default CalcDisplay;
