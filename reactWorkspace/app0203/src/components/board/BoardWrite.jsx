import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

const BoardWrite = () => {
  const [formData, setFormData] = useState({});

  const navigate = useNavigate();

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
    const t = localStorage.getItem('khToken');

    if (t == null || t.length == 0) {
      alert('로그인 후 이용 가능합니다.');
      navigate('/member/login');
      return;
    }

    fetch('http://127.0.0.1:8080/api/board/write', {
      method: 'post',
      headers: {
        'content-type': 'application/json',
        token: t,
      },
      body: JSON.stringify(formData),
    })
      .then((resp) => resp.text())
      .then((data) => {
        console.log(data);
      });
  };

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="title"
          placeholder="title"
          onChange={handleChange}
        />
        <br />
        <textarea
          name="content"
          placeholder="content"
          onChange={handleChange}
        />
        <br />
        <input type="submit" value={'작성하기'} />
      </form>
    </>
  );
};

export default BoardWrite;
