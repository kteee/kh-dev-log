import React from 'react';
import styled from 'styled-components';
import SideItem from './SideItem';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';

const SideDiv = styled.div`
  padding: 5px;

  & a {
    text-decoration: none;
    color: ${(props) => {
      return props.theme === 'dark' ? 'white' : 'black';
    }};
  }
`;

const Side = () => {
  const theme = useSelector((state) => {
    return state.theme;
  });

  return (
    <SideDiv theme={theme}>
      <Link to="/">
        <SideItem
          sideicon="https://img.icons8.com/?size=100&id=2797&format=png&color=000000"
          sidetext="Home"
        ></SideItem>
      </Link>
      <Link to="/write">
        <SideItem
          sideicon="https://img.icons8.com/?size=100&id=59856&format=png&color=000000"
          sidetext="Write"
        ></SideItem>
      </Link>
      <SideItem
        sideicon="https://img.icons8.com/?size=100&id=ywULFSPkh4kI&format=png&color=000000"
        sidetext="MyPage"
      ></SideItem>
      <SideItem
        sideicon="https://img.icons8.com/?size=100&id=59781&format=png&color=000000"
        sidetext="Logout"
      ></SideItem>
    </SideDiv>
  );
};

export default Side;
