import React, { useEffect, useState } from 'react';
import { useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import styled from 'styled-components';

const Layout = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`;

const GalleryWritePage = () => {
  const API_SERVER = process.env.REACT_APP_SERVER_ROOT;
  const navi = useNavigate();

  const writerNo = useSelector((state) => state.member.no);

  useEffect(() => {
    if (!writerNo) {
      alert('로그인 후 글 작성이 가능합니다.');
      navi('/member/login');
    }
  }, []);

  const [formData, setFormData] = useState({
    title: '',
    content: '',
    writerNo: writerNo,
    f: null,
  });

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
    console.log(formData);

    // 파일 데이터 보낼때는 body : JSON.stringify(formData) 쓰면 안됨
    // new FromData 해서 담아주면 됨
    const fd = new FormData();
    fd.append('title', formData.title);
    fd.append('content', formData.content);
    // fd.append('writerNo', formData.writerNo);
    fd.append('f', formData.f);

    fetch(`http://${API_SERVER}/api/gallery/write`, {
      method: 'POST',
      headers: {
        token: localStorage.getItem('token'),
      }, // 바디에 FormData 있으면 헤더즈 자동으로 FormData로 설정되어서 안써도 됨
      body: fd,
    }).then((resp) => {
      if (resp.status == 200) {
        alert('작성 성공!!');
        navi('/');
      } else {
        alert('작성 실패..');
      }
    });
  };

  return (
    <Layout>
      <h1>Gallery Write</h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="title"
          placeholder="제목"
          onChange={handleChange}
        />
        <br />
        <textarea name="content" placeholder="내용" onChange={handleChange} />
        <br />
        <label>사진 </label>
        <input
          type="file"
          onChange={(e) => {
            console.log('파일 체인지 발생!! @@@@@@@@@@');
            console.log(e.target.files[0]);
            // 파일에서 onChange 발생하면 파라미터에서 이벤트 받아오고
            // e.target.files 0번째 가면 해당 파일 객체가 있음

            const f = e.target.files[0];
            setFormData((prev) => {
              return {
                ...prev,
                f: f,
              };
            });
          }}
        />
        <br />
        <br />
        <input type="submit" value={'갤러리 작성'} />
      </form>
    </Layout>
  );
};

export default GalleryWritePage;
