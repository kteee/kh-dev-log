import React from 'react';
import { useSelector } from 'react-redux';

const Counter = () => {
  const { value } = useSelector((state) => state.counter);
  return (
    <>
      <h1>Counter : {value}</h1>
      <button>Plus</button>
      <button>Minus</button>
    </>
  );
};

export default Counter;
