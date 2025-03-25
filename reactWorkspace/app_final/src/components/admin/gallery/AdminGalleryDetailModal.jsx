import React from 'react';
import styled from 'styled-components';
import PageButton from '../../common/PageButton';
import { useNavigate } from 'react-router-dom';
import { deleteGalleryVo } from '../../../service/adminService';

const Layout = styled.div`
  background-color: #484848;
  display: ${({ isModalVisible }) => (isModalVisible ? 'block' : 'none')};
  position: fixed;
  width: 80vw;
  height: 80vh;
  margin-left: calc(10vw - 50px);
  margin-top: calc(10vh - 50px);
  padding: 50px;
  top: 0px;
  left: 0px;
`;

const AdminGalleryDetailModal = ({
  detailVo: vo,
  setDetailVo,
  isModalVisible,
  setModalVisible,
  loadGalleryVoList,
}) => {
  const navi = useNavigate();
  const del = async () => {
    await deleteGalleryVo(vo.no);
    setModalVisible(false);
    setDetailVo({});
    alert('DELETE SUCCESS !');
    navi('/admin/gallery');
    loadGalleryVoList();
  };

  return (
    <Layout isModalVisible={isModalVisible}>
      <h1>title : {vo.title}</h1>
      <h2>content : {vo.content}</h2>
      <div>
        <img src={vo.fileUrl} alt={vo.originName} />
      </div>
      <div>
        <button onClick={del}>삭제하기</button>
      </div>
      <div>
        <PageButton
          width="300px"
          onClick={() => {
            setModalVisible(false);
          }}
        >
          모달창닫기
        </PageButton>
      </div>
    </Layout>
  );
};

export default AdminGalleryDetailModal;
