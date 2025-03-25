import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button`
  width: ${({ width }) => width || '100px'};
  height: ${({ height }) => height || '100px'};
  background-color: ${({ backgroundColor }) =>
    backgroundColor || 'var(--primary-color)'};
  border-radius: calc(
    min(
        ${(props) => props.width || '100px'},
        ${(props) => props.height || '100px'}
      ) * 0.3
  );
  font-size: ${({ fontSize }) => fontSize || '1.5em'};
  font-weight: ${({ fontWeight }) => fontWeight || '700'};
  border: 1px solid black;
  margin: 10px;
  &:hover {
    cursor: pointer;
    border: 2px solid black;
  }
`;

const PageButton = (props) => {
  return <StyledButton {...props}>{props.children}</StyledButton>;
  // {...props} 쓰면 전달받은 속성들 다 묶어서 전달됨
};

export default PageButton;
