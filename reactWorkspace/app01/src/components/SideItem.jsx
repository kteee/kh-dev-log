import React from 'react';
import styled from 'styled-components';

const SideItemDiv = styled.div`
  display: flex;

  &:hover {
    background-color: ${(props) => {
      return props.theme === 'dark' ? 'rgb(56, 56, 56)' : '#ebebeb';
    }};
    border-radius: 10px;
  }
`;

const IconImg = styled.img`
  width: 21px;
  height: 21px;
  margin: 10px 23px;
`;

const TextDiv = styled.div`
  margin: 10px 0px;
  font-size: 15px;
`;

const SideItem = ({ theme, sideicon, sidetext }) => {
  return (
    <SideItemDiv theme={theme}>
      <IconImg className="modeIcon" src={sideicon} />
      <TextDiv>{sidetext}</TextDiv>
    </SideItemDiv>
  );
};

export default SideItem;
