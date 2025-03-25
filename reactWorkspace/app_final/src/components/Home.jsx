import React from 'react';
import styled from 'styled-components';
import Header from './common/Header';
import FloatingHearder from './common/FloatingHearder';
import Advertisement from './advertisement/Advertisement';
import { Route, Routes } from 'react-router-dom';
import GalleryPage from '../pages/gallery/GalleryPage';
import GalleryWritePage from '../pages/gallery/GalleryWritePage';
import MemberPage from '../pages/member/MemberPage';

const Layout = styled.div`
  width: 100%;
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 100px 1fr;
`;

const Wrapper = styled.div`
  display: grid;
  grid-template-columns: 1fr 8fr 1fr;
`;

const Home = () => {
  return (
    <Layout>
      <FloatingHearder />
      <Header />
      <Wrapper>
        <Advertisement href={'https://www.naver.com'} />
        <Routes>
          <Route path="/member/*" element={<MemberPage />} />
          <Route path="*" element={<GalleryPage />} />
          <Route path="/gallery/write" element={<GalleryWritePage />} />
        </Routes>
        <Advertisement
          url={
            'https://wimg.heraldcorp.com/content/default/2024/03/14/20240314050274_0.jpg'
          }
          href={'https://www.google.com'}
        />
      </Wrapper>
    </Layout>
  );
};

export default Home;
