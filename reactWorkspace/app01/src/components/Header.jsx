import React from 'react';
import styled from 'styled-components';

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
`;

const LogoImg = styled.img`
  width: 98px;
  height: 23px;
`;

const SearchInput = styled.input`
  width: 480px;
  height: 35px;
  border-radius: 20px;
  border: 1px solid gray;
  padding: 0px 18px;
  font-size: 16px;
`;

const RightDiv = styled.div`
  display: flex;
  align-items: center;
  margin-right: 35px;
`;

const NotiImg = styled.img`
  width: 25px;
  height: 23px;
  margin-left: 20px;
`;

const ProfileImg = styled.img`
  width: 35px;
  height: 35px;
  margin-left: 20px;
`;

const Header = ({ children, theme }) => {
  return (
    <HeaderDiv>
      <LeftDiv>
        <div>
          <MenuImg
            className="modeIcon"
            src="https://img.icons8.com/?size=100&id=120374&format=png&color=000000"
          />
        </div>
        <div>
          <LogoImg
            src={theme === 'dark' ? '/logo_dark.png' : '/logo_light.png'}
          />
        </div>
      </LeftDiv>
      <div>
        <SearchInput placeholder="Search" />
      </div>
      <RightDiv>
        {children}
        <NotiImg
          className="modeIcon"
          src="https://img.icons8.com/?size=100&id=47456&format=png&color=000000"
        />
        <ProfileImg src="https://img.icons8.com/?size=100&id=z-JBA_KtSkxG&format=png&color=000000" />
      </RightDiv>
    </HeaderDiv>
  );
};

export default Header;
