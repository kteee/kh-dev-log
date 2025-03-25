import React from 'react';
import styled from 'styled-components';
import { useNumberContext } from '../context/NumberContext';

const StyledButton = styled.button`
  width: 130px;
  height: 110px;
  border: 2px dashed black;
  border-radius: 5px;
  font-size: 3em;
  font-weight: 900;
`;

const KhBnt = ({ children, type }) => {
  const { num, plusOne, plusTwo, minusOne, minusTwo } = useNumberContext();
  console.log('Ggg');
  function calcNumber() {
    switch (type) {
      case 'plusOne':
        plusOne();
        break;
      case 'plusTwo':
        plusTwo();
        break;
      case 'minusOne':
        minusOne();
        break;
      case 'minusTwo':
        minusTwo();
        break;
    }
    // if (type === 'plusOne') {
    //   plusOne();
    // } else if (type === 'minusOne') {
    //   minusOne();
    // } else if (type === 'plusTwo') {
    //   plusTwo();
    // } else if (type === 'minusTwo') {
    //   minusTwo();
    // }
  }

  return <StyledButton onClick={calcNumber}>{children}</StyledButton>;
};

export default KhBnt;
