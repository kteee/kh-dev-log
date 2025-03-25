import React from 'react';
import { useNavigate } from 'react-router-dom';
import { useFormData } from '../../utils/useFormData';
import { useDispatch } from 'react-redux';
import { getPayload } from '../../utils/jwtUtil';
import { login } from '../../store/memberSlice';
import { loginMember } from '../../service/memberService';

const MemberLogin = () => {
  const navi = useNavigate();
  const dispatch = useDispatch();

  const initState = { id: '', pwd: '' };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const token = await loginMember(formData);
      dispatch(login(token));
      alert('LOGIN SUCCESS !');
      navi('/member');
    } catch (error) {
      alert('LOGIN FAIL ...');
      console.log('[ERROR] MEMBER-LOGIN', error);
    }
  };

  const { formData, handleInputChange } = useFormData(initState);

  // const submitCallBack = (formData) => {
  //   const url = 'http://127.0.0.1:8080/api/member/login';
  //   const option = {
  //     method: 'POST',
  //     headers: {
  //       'content-type': 'application/json',
  //     },
  //     body: JSON.stringify(formData),
  //   };

  //   fetch(url, option)
  //     .then((resp) => resp.text())
  //     .then((token) => {
  //       console.log(token);
  //       localStorage.setItem('token', token);

  //       const no = getPayload(token, 'no');
  //       const id = getPayload(token, 'id');
  //       const nick = getPayload(token, 'nick');
  //       dispatch(login({ no, id, nick }));
  //       alert('로그인 성공!');
  //       navi('/member');
  //     });
  // };

  return (
    <div>
      <h1>MEMBER LOGIN</h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="id"
          placeholder="ID"
          onChange={handleInputChange}
        />
        <br />
        <input
          type="password"
          name="pwd"
          placeholder="PWD"
          onChange={handleInputChange}
        />
        <br />
        <input type="submit" value={'Login'} />
        <br />
        <input
          type="button"
          value={'회원가입하기'}
          onClick={() => {
            navi('/member/join');
          }}
        />
      </form>
    </div>
  );
};

export default MemberLogin;
