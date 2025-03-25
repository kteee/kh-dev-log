import React from 'react';
import CounterDisplay from './CounterDisplay';
import CounterBtn from './CounterBtn';
import { useDispatch } from 'react-redux';

const Counter = () => {
  const dispatch = useDispatch();
  return (
    <>
      <CounterDisplay />
      <CounterBtn
        f={() => {
          dispatch({
            type: 'increase',
          });
        }}
      >
        increase
      </CounterBtn>
      <CounterBtn
        f={() => {
          dispatch({
            type: 'decrease',
          });
        }}
      >
        decrease
      </CounterBtn>
    </>
  );
};

export default Counter;
