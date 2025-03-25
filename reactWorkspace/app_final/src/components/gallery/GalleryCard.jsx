import React, { useState } from 'react';
import styled from 'styled-components';

const Layout = styled.div`
  display: flex;
  width: 350px;
  height: 300px;
  padding: 15px;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  & > h1 {
    width: 300px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
`;

const GalleryCard = ({ vo }) => {
  return (
    <Layout no={vo.no}>
      <img
        no={vo.no}
        width={'300px'}
        height={'250px'}
        src={vo.fileUrl}
        alt={vo.title}
      />
      <h1 no={vo.no}>{vo.title}</h1>
    </Layout>
  );
};

export default GalleryCard;
