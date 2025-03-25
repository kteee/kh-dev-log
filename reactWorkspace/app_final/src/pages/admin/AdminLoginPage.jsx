import React from 'react';
import styled from 'styled-components';
import { useFormData } from '../../utils/useFormData';
import { loginAdmin } from '../../service/adminService';
import { useNavigate } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { login } from '../../store/adminSlice';

const Layout = styled.div`
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;

  & > form {
    width: 500px;
    height: 500px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: violet;
    border-radius: 50px;

    & > input {
      width: 400px;
      height: 50px;
      margin: 30px 0px;
      font-size: 2rem;
      font-weight: 700;
      border: none;
      border-bottom: 1px solid black;
      border-radius: 20px;
      padding-left: 30px;
      box-sizing: border-box;

      &[type='submit'] {
        background-color: lightgray;
        border: none;
        border-radius: 20px;
        padding-left: 0px;
        &:hover {
          cursor: pointer;
          background-color: gray;
          transition: 0.3s;
        }
      }
    }
  }
`;

const AdminLoginPage = () => {
  const dispatch = useDispatch();
  const navi = useNavigate();
  const { formData, handleInputChange } = useFormData();

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const token = await loginAdmin(formData);
      dispatch(login(token));
      alert('ADMIN LOGIN SUCCESS !');
      navi('/admin');
    } catch (error) {
      alert('ADMIN LOGIN FAIL ...');
      console.log('[ERROR] ADMIN-LOGIN', error);
    }
  };

  return (
    <Layout>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="id"
          placeholder="ADMIN ID"
          onChange={handleInputChange}
        />
        <input
          type="password"
          name="pwd"
          placeholder="ADMIN PWD"
          onChange={handleInputChange}
        />
        <input type="submit" value={'ADMIN LOGIN'} />
      </form>
    </Layout>
  );
};

export default AdminLoginPage;
