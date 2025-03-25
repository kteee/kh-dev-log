import React from 'react';
import { useDispatch, useSelector } from 'react-redux';
import styled from 'styled-components';
import { logout } from '../../store/adminSlice';
import { useNavigate } from 'react-router-dom';

const Layout = styled.div`
  position: sticky;
  top: 0px;
  width: 100%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  border-right: 1px solid black;
  & > div {
    height: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom: 1px solid black;
  }

  /* 관리자 닉네임 , 로그아웃 */
  & > div:nth-child(2) {
    display: grid;
    grid-template-rows: 1fr;
    grid-template-columns: 3fr 1fr;
    place-items: center center;
    & > button {
      width: 100%;
      height: 50%;
      margin-right: 30px;
      background-color: lightgray;
      border: none;
      border-radius: 20px;
      font-weight: 700;
      &:hover {
        background-color: gray;
        transition: 0.3s;
        cursor: pointer;
      }
    }
  }

  /* 멤버메뉴 , 갤러리메뉴 */
  & > div:nth-child(3) > button,
  & > div:nth-child(4) > button,
  & > div:nth-child(5) > button {
    background-color: red;
    width: 90%;
    height: 50%;
    font-size: 24px;
    background-color: black;
    color: white;
    border-radius: 20px;
    &:hover {
      cursor: pointer;
      box-shadow: 0px 0px 10px 10px var(--primary-color);
      transition: 0.3s;
    }
  }
`;

const AdminSidebar = () => {
  const navi = useNavigate();
  const dispatch = useDispatch();
  const admin = useSelector((state) => state.admin);

  return (
    <Layout>
      <div>
        <h1>ADMIN MENU</h1>
      </div>
      <div>
        <h2>{admin.nick}</h2>
        <button
          onClick={() => {
            dispatch(logout());
            alert('ADMIN LOGOUT');
          }}
        >
          LOGOUT
        </button>
      </div>
      <div>
        <button
          onClick={() => {
            navi('/admin/dashboard');
          }}
        >
          DASHBOARD
        </button>
      </div>
      <div>
        <button
          onClick={() => {
            navi('/admin/member');
          }}
        >
          MEMBER
        </button>
      </div>
      <div>
        <button
          onClick={() => {
            navi('/admin/gallery');
          }}
        >
          GALLERY
        </button>
      </div>
    </Layout>
  );
};

export default AdminSidebar;
