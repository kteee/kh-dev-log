import React, { useState } from 'react';
import MemberDisplay from './MemberDisplay';
import MemberLoginForm from './MemberLoginForm';
import MemberBtn from './MemberBtn';
import { useSelector, useDispatch } from 'react-redux';

const Member = () => {
  const id = useSelector((state) => {
    return state.id;
  });
  const nick = useSelector((state) => {
    return state.nick;
  });
  const email = useSelector((state) => {
    return state.email;
  });

  const dispatch = useDispatch();

  const [voData, setVoData] = useState({});

  const f = (e) => {
    const memberInfo = {
      ...voData,
      [e.target.name]: e.target.value,
    };
    setVoData(memberInfo);
  };

  return (
    <>
      <MemberDisplay id={id} nick={nick} email={email} />
      <MemberLoginForm f={f} />
      <MemberBtn
        f={() => {
          dispatch({
            type: 'login',
            payload: voData,
          });
        }}
      >
        로그인
      </MemberBtn>
      <MemberBtn
        f={() => {
          dispatch({
            type: 'logout',
          });
        }}
      >
        로그아웃
      </MemberBtn>
    </>
  );
};

export default Member;
