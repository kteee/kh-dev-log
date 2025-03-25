import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button`
  height: 32px;
  border: none;
  font-size: 14px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 12px;
  padding: 0px 12px;
  border-radius: 6px;
`;

const Category = ({ cateName }) => {
  return <StyledButton>{cateName}</StyledButton>;
};

export default Category;
