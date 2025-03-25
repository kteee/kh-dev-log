import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button`
  height: 30px;
  border: none;
  font-size: 14px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 12px;
  padding: 0px 12px;
  border-radius: 6px;
`;

const Category = () => {
  return (
    <>
      <StyledButton>전체</StyledButton>
      <StyledButton>여행</StyledButton>
      <StyledButton>맛집/카페</StyledButton>
      <StyledButton>근교/명소</StyledButton>
      <StyledButton>전시/실내</StyledButton>
      <StyledButton>액티비티</StyledButton>
    </>
  );
};

export default Category;
