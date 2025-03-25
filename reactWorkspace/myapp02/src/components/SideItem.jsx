import React from 'react';
import styled from 'styled-components';
import { useSelector } from 'react-redux';

const SideItemDiv = styled.div`
  display: flex;
  align-items: center;

  &:hover {
    background-color: #ebebeb;
    border-radius: 10px;
  }
`;

const IconImg = styled.img`
  width: 21px;
  height: 21px;
  margin: 15px 23px;
  filter: ${(props) => {
    return props.theme === 'dark' ? 'brightness(0) invert(1)' : 'light';
  }};
`;

const TextDiv = styled.div`
  margin: 15px 0px;
  font-size: 16px;
`;

const SideItem = ({ sideicon, sidetext }) => {
  const theme = useSelector((state) => {
    return state.theme;
  });

  return (
    <SideItemDiv>
      <IconImg theme={theme} src={sideicon} />
      <TextDiv>{sidetext}</TextDiv>
    </SideItemDiv>
  );
};

export default SideItem;
