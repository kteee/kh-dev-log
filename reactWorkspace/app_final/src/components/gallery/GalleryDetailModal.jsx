import React, { useState } from 'react';
import { useSelector } from 'react-redux';
import styled from 'styled-components';

const Layout = styled.div`
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #ff000078;
  display: none;
  justify-content: center;
  align-items: center;
`;

const MainDiv = styled.div`
  width: 70%;
  height: 80%;
  background-color: lightgray;
  border: 3px solid black;
  border-radius: 20px;

  display: grid;
  grid-template-rows: 30px 50px 1fr 250px 30px;
  grid-template-columns: 1fr;
  place-items: center center;
`;

const GalleryDetailModal = ({ modalStatus, closeModal }) => {
  const vo = useSelector((state) => state.galleryDetail);

  return (
    <Layout id={modalStatus} onClick={closeModal}>
      <MainDiv>
        <div>
          넘버 : {vo.no} / 작성자 : {vo.writerNo} / 작성일시 : {vo.enrollDate}
        </div>
        <div>{vo.title}</div>
        <div>{vo.content}</div>
        <div>
          <img src={vo.fileUrl} alt={vo.originName} />
        </div>
        <div>{vo.originName}</div>
      </MainDiv>
    </Layout>
  );
};

export default GalleryDetailModal;
