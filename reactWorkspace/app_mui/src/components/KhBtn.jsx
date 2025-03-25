import React from 'react';
import styled from 'styled-components';

const Button = styled.button`
  width: ${(props) => {
    return props.w || '100px';
  }};
  height: 30px;
  background-color: ${(props) => {
    return props.bc || 'var(--main-color)';
  }};
  color: aliceblue;
  border: none;
  border-radius: 10px;

  &:hover {
    background-color: black;
  }
`;

const KhBtn = ({ children, w, bc }) => {
  return (
    <Button w={w} bc={bc}>
      {children}
    </Button>
  );
};

export default KhBtn;
