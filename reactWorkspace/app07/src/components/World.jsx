import React, { useEffect, useState } from 'react';

const World = () => {

  const timer = setInterval(() => {
    console.log("벌써 3초가 지났어");
  }, 3000);

  useEffect( ()=>{
    return ()=>{
      clearInterval(timer); // 기존 컴포넌트가 언마운트가 될 때 처리해줘야함 
    };
  } );

  const [num, setNum] = useState(10);

  return (
    <h1 onClick={ ()=>{ setNum(num+1) } }>월드</h1>
  );
};

export default World;