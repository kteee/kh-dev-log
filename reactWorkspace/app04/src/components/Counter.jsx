import React, { useState } from 'react';

const Counter = () => {

  const [num, setNum] = useState(10);

  function f01(){
    setNum(num+1);
  }

  // function f02(){
  //   setNum(num-1);
  // }

  return (
    <>
      <button onClick={ f01 }>+</button>
      <button onClick={ ()=>{setNum(num-1);} }>-</button>
      <span>{num}</span>
    </>
  );
};

export default Counter;

