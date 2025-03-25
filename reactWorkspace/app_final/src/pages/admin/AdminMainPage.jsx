import React from 'react';
import { Route, Routes } from 'react-router-dom';
import AdminLoginPage from './AdminLoginPage';
import AdminDashboardPage from './AdminDashboardPage';

const AdminMainPage = () => {
  return (
    <Routes>
      <Route path="login" element={<AdminLoginPage />} />
      <Route path="*" element={<AdminDashboardPage />} />
    </Routes>
  );
};

export default AdminMainPage;
