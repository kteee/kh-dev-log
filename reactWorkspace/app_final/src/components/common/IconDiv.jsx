import React from 'react';
import styled from 'styled-components';
import { useNavigate } from 'react-router-dom';

const Layout = styled.div`
  display: flex;
  height: 80%;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  color: white;
  font-size: 14px;
  font-weight: 900;
  justify-content: space-evenly;

  &:hover {
    cursor: pointer;
  }
`;

const IconDiv = ({ children, str, url }) => {
  const navi = useNavigate();

  return (
    <Layout
      onClick={() => {
        if (url) {
          navi(url);
        }
      }}
    >
      {children}
      <span>{str}</span>
    </Layout>
  );
};

export default IconDiv;
