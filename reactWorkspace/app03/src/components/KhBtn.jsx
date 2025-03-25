import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button`
  background-color: ${( (props)=>{return props.theme == "dark" ? "black" : "white"} )};
  border: 3px dashed blue;
`; 

// const styledButton = styled.button(); 
// 원래는 위처럼 썼었는데.. ``으로도 함수 호출 가능 
// 컴포넌트 만들 때 대문자로 만들어야 됨 (소문자하면 안됨..)

const KhBtn = ( props ) => {
  return (
    <StyledButton theme="dark">{props.str ?? "기본글자"}</StyledButton>
  );
};

export default KhBtn;

// rcs 입력하면 함수 자동완성 할 수 있음