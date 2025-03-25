import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { jwtDecode } from 'jwt-decode';
import { useDispatch } from 'react-redux';
import { logout } from '../../store/memberSlice';

const MemberMypage = () => {
  const dispatch = useDispatch();

  const [memberVo, setMemberVo] = useState({
    id: '',
    nick: '',
  });

  const token = localStorage.getItem('token');
  const navi = useNavigate();

  // 토큰 정보 없으면 로그인 페이지로 보내기
  useEffect(() => {
    if (!token) {
      navi('/member/login');
    }
  });

  // 로컬 스토리지에서 토큰을 가져와 아이디 및 닉네임 추출
  // JWT 라이브러리를 사용하면 쉽게 디코딩 가능
  // 직접 구현하려면, JWT 구조에 따라 토큰을 '.' 기준으로 분리하여 payload(중간 부분)를 가져옴
  // base64로 디코딩 후 JSON 파싱하여 아이디를 추출하고, 해당 아이디를 서버에 보내 닉네임을 받아옴

  useEffect(() => {
    if (token) {
      const decodedToken = jwtDecode(token);
      console.log(decodedToken);
      setMemberVo({
        id: decodedToken.id,
        nick: decodedToken.nick,
      });
    }
  }, []);

  return (
    <div>
      <h1>MyPage</h1>
      <h3>아이디 : {memberVo.id}</h3>
      <h3>닉네임 : {memberVo.nick}</h3>
      <button
        onClick={() => {
          localStorage.removeItem('token');
          dispatch(logout());
          alert('logout!!');
          navi('/');
        }}
      >
        로그아웃
      </button>
    </div>
  );
};

export default MemberMypage;
