import React, { useState } from 'react';

const MemberLogin = () => {
  const [formData, setFormData] = useState({});

  const handleChange = (e) => {
    setFormData((prev) => {
      return {
        ...prev,
        [e.target.name]: e.target.value, // 변수를 키값으로 설정하려면 대괄호로 감싸야함
        // 아니면 그냥 문자열로 인식해버림 "e.target.name" ...
      };
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData);

    fetch('http://127.0.0.1:8080/api/member/login', {
      method: 'POST',
      headers: {
        'content-type': 'application/json',
      },
      body: JSON.stringify(formData),
    })
      .then((resp) => resp.text())
      .then((data) => {
        console.log('data : ', data);
        localStorage.setItem('khToken', data);
      });
  };

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input type="text" name="id" placeholder="ID" onChange={handleChange} />
        <br />
        <input
          type="text"
          name="pwd"
          placeholder="PWD"
          onChange={handleChange}
        />
        <br />
        <input type="submit" value={'로그인'} />
      </form>
    </>
  );
};

export default MemberLogin;
