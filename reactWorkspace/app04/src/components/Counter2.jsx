import React, { useState } from 'react';

const Counter2 = () => {

  const [num, setNum] = useState(0);

  return (
    <>
      <button onClick={ ()=>{ setNum(num+1) } }>+</button>
      <button onClick={ ()=>{ setNum(num-1) } }>-</button>
      <span>{num}</span>
    </>
  );
};

export default Counter2;