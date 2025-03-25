import React from 'react';
import { useCounter } from '../context/counterContext';

const Display = () => {
  // const {value} = useCounter();
  // const cnt = value.cnt;
  const { cnt } = useCounter();

  return <h1>카운터 : {cnt}</h1>;
  // 컨텍스트에서 값 꺼내고 그 안에서 cnt 꺼내야 함
};

export default Display;
