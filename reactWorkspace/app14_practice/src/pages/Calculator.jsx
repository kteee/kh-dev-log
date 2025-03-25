import React, { createContext, useContext, useState } from 'react';
import styled from 'styled-components';
import CalcBtn from '../components/CalcBtn';
import CalcDisplay from '../components/CalcDisplay';

const LayoutDiv = styled.div`
  display: grid;
  grid-template-columns: repeat(4, 60px);
  grid-template-rows: repeat(5, 65px);
`;

const CalcContext = createContext(0);

const Calculator = () => {
  const [num1, setNum1] = useState(0);
  const [operand, setOperand] = useState('');
  const [num2, setNum2] = useState(0);

  return (
    <CalcContext.Provider value={[num1, setNum1]}>
      <LayoutDiv>
        <CalcDisplay />
        <CalcBtn btn={7} />
        <CalcBtn btn={8} />
        <CalcBtn btn={9} />
        <CalcBtn btn={'+'} />
        <CalcBtn btn={4} />
        <CalcBtn btn={5} />
        <CalcBtn btn={6} />
        <CalcBtn btn={'-'} />
        <CalcBtn btn={1} />
        <CalcBtn btn={2} />
        <CalcBtn btn={3} />
        <CalcBtn btn={'*'} />
        <CalcBtn btn={'CE'} />
        <CalcBtn btn={0} />
        <CalcBtn btn={'='} />
        <CalcBtn btn={'/'} />
      </LayoutDiv>
    </CalcContext.Provider>
  );
};

export default Calculator;
export { CalcContext };
