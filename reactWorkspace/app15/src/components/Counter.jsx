import React from 'react';
import Display from './Display';
import Khbtn from './Khbtn';
import { useCounter } from '../context/counterContext';

const Counter = () => {
  // const value = useCounter();
  // const dispatch = value.dispatch;

  const { dispatch } = useCounter();

  return (
    <>
      <Display />
      <Khbtn
        str="plusOne"
        f={() => {
          dispatch({ type: 'plusOne' });
        }}
      />
      <Khbtn
        str="minusOne"
        f={() => {
          dispatch({ type: 'minusOne' });
        }}
      />
      <Khbtn
        str="plusTwo"
        f={() => {
          dispatch({ type: 'plusTwo' });
        }}
      />
      <Khbtn
        str="minusTwo"
        f={() => {
          dispatch({ type: 'minusTwo' });
        }}
      />
    </>
  );
};

export default Counter;
