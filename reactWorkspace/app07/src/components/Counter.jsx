import React, { useEffect, useState } from 'react';

const Counter = () => {

  const [num1, setNum1] = useState(1);
  const [num2, setNum2] = useState(1);

  useEffect( ()=>{
    console.log("카운터 렌더링 됨! (넘버1이 바뀌었을 때만 출력)");
  }, [num1] );

  useEffect( ()=>{
    console.log("카운터 렌더링 됨! (넘버2가 바뀌었을 때만 출력)");
  }, [num2] );

  return (
    <>
      <h3 onClick={ ()=>{setNum1(num1+1);} }>넘버1 : {num1}</h3>
      <h3 onClick={ ()=>{setNum2(num2+1);} }>넘버2 : {num2}</h3>
    </>
  );
};

export default Counter;