import React from 'react';
import { useNavigate } from 'react-router-dom';
import { useFormData } from '../../utils/useFormData';
import { joinMember } from '../../service/memberService';

const MemberJoin = () => {
  const navi = useNavigate();

  const { formData, handleInputChange } = useFormData({});

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await joinMember(formData); // await을 쓰면 joimMember(); 가 다 끝나고 다음 줄로 넘어감
      alert('회원가입 성공!');
      navi('/member/login');
    } catch (err) {
      console.log('err 발생~~ ::: ', err);
    }
  };

  // const [formData, setFormData] = useState({
  //   id: '',
  //   pwd: '',
  //   nick: '',
  // });

  // const handleInputChange = (e) => {
  //   setFormData((prev) => {
  //     return {
  //       ...prev,
  //       [e.target.name]: e.target.value,
  //     };
  //   });
  // };

  // const handleSubmit = (e) => {
  //   e.preventDefault();

  //   const url = 'http://127.0.0.1:8080/api/member/join';
  //   const option = {
  //     method: 'POST',
  //     headers: {
  //       'content-type': 'application/json',
  //     },
  //     body: JSON.stringify(formData),
  //   };

  //   fetch(url, option)
  //     .then((resp) => resp.text())
  //     .then((data) => {
  //       console.log(data);
  //       navi('/member/login');
  //     });
  // };

  // const submitCallBack = (formData) => {
  //   const url = 'http://127.0.0.1:8080/api/member/join';
  //   const option = {
  //     method: 'POST',
  //     headers: {
  //       'content-type': 'application/json',
  //     },
  //     body: JSON.stringify(formData),
  //   };

  //   fetch(url, option)
  //     .then((resp) => resp.text())
  //     .then((data) => {
  //       console.log(data);
  //       navi('/member/login');
  //     });
  // };

  return (
    <div>
      <h1>MEMBER JOIN</h1>
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
        <input
          type="text"
          name="nick"
          placeholder="NICK"
          onChange={handleInputChange}
        />
        <input type="submit" value={'Join'} />
      </form>
    </div>
  );
};

export default MemberJoin;
