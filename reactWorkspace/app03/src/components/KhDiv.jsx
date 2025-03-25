import React from 'react';
import styled from 'styled-components';

const StyledDiv = styled.div`
  width: 100px;
  height: 100px;
  border: 1px solid red;
`;

const KhDiv = ( props ) => {
  return (
    <StyledDiv>{ props.str || "기본글자" }</StyledDiv>
  );
};
// 문자열 -> 길이가 0이면 F , 1 이상이면 T
// 즉, "기본글자" 가 true 여서 "기본글자" 를 리턴하는 것임
export default KhDiv;