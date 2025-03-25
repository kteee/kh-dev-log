import React from 'react';
import styled from 'styled-components';
import SearchIcon from '../icons/SearchIcon';
import IconDiv from './IconDiv';
import UserIcon from '../icons/UserIcon';
import HeartIcon from '../icons/HeartIcon';
import CartIcon from '../icons/CartIcon';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';

const HeaderDiv = styled.div`
  height: 100px;
  background: ${(props) => {
    return props.x
      ? `linear-gradient(
    258.57deg,
    #5a9cf0 8%,
    #bf73d8 30%,
    #f456b1 50.46%,
    #f554b0 70%,
    #ff84cf
  )`
      : `linear-gradient(
    258.57deg,
    #ff84cf 8%,
    #f554b0 30%,
    #f456b1 50.46%,
    #bf73d8 70%,
    #5a9cf0
  )`;
  }};
  display: flex;
  justify-content: center;
`;

const HeaderInnerDiv = styled.div`
  width: 80%;
  height: 100%;
  display: flex;
  justify-content: space-between;
`;

const HeaderInnerLeft = styled.div`
  width: 700px;
  height: 100%;
  display: flex;
  justify-content: space-between;
`;

const HeaderInnerRight = styled.div`
  width: 300px;
  height: 100%;
`;

const HeaderLogoDiv = styled.div`
  width: 124px;
  height: 100%;
`;

const HeaderSearchDiv = styled.div`
  width: 550px;
  height: 100%;
  color: gray;
  display: flex;
  justify-content: center;
  align-items: center;
`;

const HeaderSearchAreaDiv = styled.div`
  background-color: white;
  width: 100%;
  height: 50%;
  border-radius: 99px;
  padding-left: 15px;
  display: flex;
  align-items: center;
`;

const SearchAreaIconDiv = styled.div`
  padding-top: 6px;
  padding-right: 8px;
`;

const SearchAreaTextDiv = styled.div`
  width: 80%;
  & > span {
    font-size: 17px;
    font-weight: bold;
    color: gray;
  }
`;

const IconAreaDiv = styled.div`
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: space-around;
  align-items: center;
`;

const Header = ({ cn, x }) => {
  const nick = useSelector((state) => state.member.nick);

  return (
    <HeaderDiv x={x} className={cn}>
      <HeaderInnerDiv>
        <HeaderInnerLeft>
          <HeaderLogoDiv>
            <Link to={'/'}>
              <img
                src="https://image6.yanolja.com/cx-ydm/8RyXncO0G1U1PLT7"
                alt="LOGO"
                width={'100%'}
                height={'100%'}
              />
            </Link>
          </HeaderLogoDiv>
          <HeaderSearchDiv>
            <HeaderSearchAreaDiv>
              <SearchAreaIconDiv>
                <SearchIcon />
              </SearchAreaIconDiv>
              <SearchAreaTextDiv>
                <span>무엇을 하고 놀까요?</span>
              </SearchAreaTextDiv>
            </HeaderSearchAreaDiv>
          </HeaderSearchDiv>
        </HeaderInnerLeft>
        <HeaderInnerRight>
          <IconAreaDiv>
            <IconDiv str={nick} url="/member">
              <UserIcon />
            </IconDiv>
            <IconDiv str="찜" url="/like">
              <HeartIcon />
            </IconDiv>
            <IconDiv str="글작성" url="/gallery/write">
              <CartIcon />
            </IconDiv>
          </IconAreaDiv>
        </HeaderInnerRight>
      </HeaderInnerDiv>
    </HeaderDiv>
  );
};

export default Header;
