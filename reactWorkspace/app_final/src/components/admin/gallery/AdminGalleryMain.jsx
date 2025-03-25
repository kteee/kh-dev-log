import React, { useState } from 'react';
import styled from 'styled-components';
import AdminGalleryDetailModal from './AdminGalleryDetailModal';

const Layout = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: repeat(11, 1fr);
`;

const GalleryRow = styled.div`
  display: grid;
  grid-template-rows: 1fr;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  &:hover {
    background-color: black;
    color: white;
  }
`;

const AdminGalleryMain = ({ galleryVoList, loadGalleryVoList }) => {
  const [detailVo, setDetailVo] = useState({});
  const [isModalVisible, setModalVisible] = useState(false);
  console.log('loadGalleryVoList:', loadGalleryVoList);

  return (
    <>
      <AdminGalleryDetailModal
        detailVo={detailVo}
        setDetailVo={setDetailVo}
        isModalVisible={isModalVisible}
        setModalVisible={setModalVisible}
        loadGalleryVoList={loadGalleryVoList}
      />
      <Layout>
        <GalleryRow>
          <div>번호</div>
          <div>제목</div>
          <div>파일명</div>
          <div>작성자</div>
          <div>작성일시</div>
        </GalleryRow>
        {galleryVoList.map((vo) => {
          return (
            <GalleryRow
              onClick={() => {
                setDetailVo(vo);
                setModalVisible(true);
              }}
            >
              <div>{vo.no}</div>
              <div>{vo.title}</div>
              <div>{vo.originName}</div>
              <div>{vo.writerNo}</div>
              <div>{vo.enrollDate}</div>
            </GalleryRow>
          );
        })}
      </Layout>
    </>
  );
};

export default AdminGalleryMain;
