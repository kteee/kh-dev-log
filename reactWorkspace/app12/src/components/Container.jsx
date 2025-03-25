import React from 'react';
import styled from 'styled-components';

const StyledDiv = styled.div`
  width: ${(props) => {
    return props.w + 'px';
  }};
  height: ${(props) => {
    return props.h + 'px';
  }};
  border: ${(props) => {
    return '5px solid ' + props.color;
  }};
  box-sizing: border-box;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
`;

const Container = ({ children, w, h, color }) => {
  return (
    <StyledDiv w={w} h={h} color={color}>
      {children}
    </StyledDiv>
  );
};

export default Container;
