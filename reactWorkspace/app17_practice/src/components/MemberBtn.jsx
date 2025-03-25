import React from 'react';

const MemberBtn = ({ children, f }) => {
  return <button onClick={f}>{children}</button>;
};

export default MemberBtn;
