import React from 'react';
import styled from 'styled-components';

const StyledH1 = styled.h1`
  background-color: black;
  color: white;
`;

const Header = () => {
  return (
    <>
      <StyledH1>환영합니다~~</StyledH1>
      <hr />
    </>
  );
};

export default Header;
