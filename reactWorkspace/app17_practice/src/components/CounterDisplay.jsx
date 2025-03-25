import React from 'react';
import { useSelector } from 'react-redux';

const CounterDisplay = () => {
  const num = useSelector((state) => {
    return state.num;
  });
  return <h2>Counter : {num}</h2>;
};

export default CounterDisplay;
