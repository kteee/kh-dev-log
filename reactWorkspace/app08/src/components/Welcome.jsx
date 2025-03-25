import React from 'react';

const Welcome = (props) => {
  return (
    <>
      <h1>홈페이지</h1>
      {props.children}
      <hr />
    </>
  );
};

export default Welcome;
