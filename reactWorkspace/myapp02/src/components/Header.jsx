import React from 'react';
import styled from 'styled-components';
import { useSelector, useDispatch } from 'react-redux';

const HeaderDiv = styled.div`
  grid-column: span 2;
  display: flex;
  justify-content: space-between;
  align-items: center;
`;

const LeftDiv = styled.div`
  display: flex;
  align-items: center;
`;

const MenuImg = styled.img`
  width: 20px;
  height: 20px;
  margin: 0px 25px;
  filter: ${(props) => {
    return props.theme === 'dark' ? 'brightness(0) invert(1)' : 'light';
  }};
`;

const CenterDiv = styled.div`
  display: flex;
  align-items: center;
  font-size: 1.9em;
  letter-spacing: 1px;
  color: ${(props) => {
    return props.theme === 'dark' ? 'white' : '#303030';
  }};
`;

const RightDiv = styled.div`
  display: flex;
  align-items: center;
  margin-right: 35px;
`;

const ModeButton = styled.button`
  width: 94px;
  height: 32px;
  top: 15px;
  background-color: white;
  border: 1px solid lightgray;
  border-radius: 20px;
  font-size: 14px;

  &:hover {
    background-color: #f7f7f7;
    cursor: pointer;
  }
`;

const NotiImg = styled.img`
  width: 25px;
  height: 23px;
  margin-left: 20px;
  filter: ${(props) => {
    return props.theme === 'dark' ? 'brightness(0) invert(1)' : 'light';
  }};
`;

const ProfileImg = styled.img`
  width: 35px;
  height: 35px;
  margin-left: 20px;
`;

const Header = () => {
  const theme = useSelector((state) => {
    return state.theme;
  });

  const dispatch = useDispatch();

  return (
    <HeaderDiv>
      <LeftDiv>
        <div>
          <MenuImg
            theme={theme}
            src="https://img.icons8.com/?size=100&id=120374&format=png&color=000000"
          />
        </div>
      </LeftDiv>
      <CenterDiv theme={theme}>BucketList App</CenterDiv>
      <RightDiv>
        <ModeButton
          onClick={() => {
            dispatch({ type: 'changeMode' });
          }}
        >
          {theme === 'light' ? 'DarkMode' : 'LightMode'}
        </ModeButton>
        <NotiImg
          theme={theme}
          src="https://img.icons8.com/?size=100&id=47456&format=png&color=000000"
        />
        <ProfileImg src="https://img.icons8.com/?size=100&id=z-JBA_KtSkxG&format=png&color=000000" />
      </RightDiv>
    </HeaderDiv>
  );
};

export default Header;
