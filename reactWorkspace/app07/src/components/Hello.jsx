import React, { useEffect, useState } from 'react';

const Hello = () => {

  console.log("Hello 컴포넌트 시작~");

  const [num, setNum] = useState(100);
  const [theme, setTheme] = useState("dark");

  // num 바뀔때만 useEffect 실행되게 하기 
  // 테마색상 변경할때는 실행안되게,, 
  useEffect( ()=>{
    console.log("[유즈이펙트] 변경된 num 값 : ", num)
  } , [num] ); 

  console.log("Hello 컴포넌트 종료~");
  
  return (
    <>
      <h1 onClick={ ()=>{setNum(num+1)} }>Hello~ {num}</h1>
      <button onClick={ ()=>{
        setTheme(theme === 'dark' ? 'light' : "dark");
        console.log("변경된 테마 :" , theme)
      }} >테마 색상 변경</button>
    </>
  );
};

export default Hello;