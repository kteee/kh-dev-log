import React from 'react';
import styled from 'styled-components';
import { Link } from 'react-router-dom';

const Layout = styled.div`
  background-color: lightgray;
  width: 60vw;
  height: 100%;
  font-size: 1.5rem;
  display: flex;
  justify-content: space-around;
  align-items: center;
`;

const Header = () => {
  return (
    <>
      <Layout>
        <Link to={'/member'}>Member</Link>
        <Link to={'/board'}>Board</Link>
        <Link to={'/notice'}>Notice</Link>
        <Link to={'/gallery'}>Gallery</Link>
      </Layout>
    </>
  );
};

export default Header;
