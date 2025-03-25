import React, { useEffect } from 'react';
import { useSelector } from 'react-redux';
import { Route, Routes, useNavigate } from 'react-router-dom';
import styled from 'styled-components';
import AdminSidebar from '../../components/admin/AdminSidebar';
import AdminMemberPage from './AdminMemberPage';
import AdminGalleryPage from './AdminGalleryPage';

const Layout = styled.div`
  display: grid;
  grid-template-rows: 1fr;
  grid-template-columns: 300px 1fr;
`;

const AdminDashboardPage = () => {
  const navi = useNavigate();
  const admin = useSelector((state) => state.admin);

  useEffect(() => {
    if (!admin.no) {
      navi('/admin/login');
      alert('ADMIN ONLY');
    }
  }, [admin]);

  return (
    <Layout>
      <AdminSidebar />
      <Routes>
        <Route path="member" element={<AdminMemberPage />} />
        <Route path="gallery" element={<AdminGalleryPage />} />
        <Route path="*" element={<h1>ADMIN DASHBOARD</h1>} />
      </Routes>
    </Layout>
  );
};

export default AdminDashboardPage;
