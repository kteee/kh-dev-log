import React from 'react';

const MemberLoginForm = ({ f }) => {
  return (
    <>
      <input type="text" placeholder="ID" name="id" onChange={f} />
      <br />
      <input type="text" placeholder="NICK" name="nick" onChange={f} />
      <br />
      <input type="text" placeholder="EMAIL" name="email" onChange={f} />
      <br />
    </>
  );
};

export default MemberLoginForm;
