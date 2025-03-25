import { React, useContext } from 'react';
import styled from 'styled-components';
import { CalcContext } from '../pages/Calculator';

const StyledBtn = styled.button`
  font-size: 1.2em;
`;

const CalcBtn = ({ btn }) => {
  const [num1, setNum1] = useContext(CalcContext);
  const [operand, setOperand] = useContext(CalcContext);

  function calc() {
    if (num1 == '0') {
      setNum1(btn);
    } else if (typeof btn === 'number') {
      setNum1(num1 + '' + btn);
    }
    // else if (btn === '+') {
    //   setOperand('+');
    // }
  }

  return <StyledBtn onClick={calc}>{btn}</StyledBtn>;
};

export default CalcBtn;
