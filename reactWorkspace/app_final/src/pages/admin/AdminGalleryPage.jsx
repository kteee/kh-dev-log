import React, { useEffect, useState } from 'react';
import { findGalleryVoList } from '../../service/galleryService';
import styled from 'styled-components';
import AdminGalleryHeader from '../../components/admin/gallery/AdminGalleryHeader';
import AdminGalleryMain from '../../components/admin/gallery/AdminGalleryMain';
import AdminGalleryFooter from '../../components/admin/gallery/AdminGalleryFooter';
import { useLocation } from 'react-router-dom';

const Layout = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
`;

const MainArea = styled.div`
  width: 80%;
  height: 100vh;
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 100px 1fr 100px;
`;

const AdminGalleryPage = () => {
  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  let pno = queryParams.get('pno');
  if (pno === null) {
    pno = 1;
  }

  // const [galleryVoList, setGalleryVoList] = useState([]);
  const [data, setData] = useState({ galleryVoList: [], pageVo: {} });

  const loadGalleryVoList = async () => {
    try {
      const responseData = await findGalleryVoList(pno);
      setData(responseData);
    } catch (error) {
      alert('FIND GALLERY LIST FAIL ...');
      console.log('[ERROR] FIND-GALLERY-LIST', error);
    }
  };

  useEffect(() => {
    loadGalleryVoList();
  }, [pno]);

  return (
    <Layout>
      <MainArea>
        <AdminGalleryHeader />
        <AdminGalleryMain
          galleryVoList={data.galleryVoList}
          loadGalleryVoList={loadGalleryVoList}
        />
        <AdminGalleryFooter pageVo={data.pageVo} />
      </MainArea>
    </Layout>
  );
};

export default AdminGalleryPage;
