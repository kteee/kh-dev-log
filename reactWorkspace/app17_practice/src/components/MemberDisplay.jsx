import React from 'react';
import { useSelector } from 'react-redux';

const MemberDisplay = () => {
  const id = useSelector((state) => {
    return state.id;
  });
  const nick = useSelector((state) => {
    return state.nick;
  });
  const email = useSelector((state) => {
    return state.email;
  });

  return (
    <>
      <h2>==== MemberInfo ====</h2>
      <h3>ID : {id}</h3>
      <h3>NICK : {nick}</h3>
      <h3>EMAIL : {email}</h3>
    </>
  );
};

export default MemberDisplay;
