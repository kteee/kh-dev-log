import React, { useState } from 'react';
import styled from 'styled-components';

const Layout = styled.div`
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: 150px 200px;
  grid-template-rows: 30px;
  justify-content: center;
  align-content: center;
  place-items: center center;
`;

const MemberJoin = () => {
  const [formData, setFormData] = useState({});

  const handleChange = (e) => {
    setFormData((prev) => {
      return {
        ...prev,
        [e.target.name]: e.target.value,
      };
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('formData : ', formData);

    fetch('http://127.0.0.1:8080/api/member/join', {
      method: 'POST',
      headers: {
        'content-type': 'application/json',
      },
      body: JSON.stringify(formData),
    })
      .then((resp) => resp.text())
      .then((data) => {
        console.log(data);
      });
  };

  return (
    <form style={{ width: '60%', height: '100%' }} onSubmit={handleSubmit}>
      <Layout>
        <label>아이디</label>
        <input type="text" name="id" onChange={handleChange} />
        <label>비밀번호</label>
        <input type="password" name="pwd" onChange={handleChange} />
        <label>닉네임</label>
        <input type="text" name="nick" onChange={handleChange} />
        <input type="button" value={'아이디/비밀번호 찾기'} />
        <input type="submit" value={'회원가입'} />
      </Layout>
    </form>
  );
};

export default MemberJoin;
