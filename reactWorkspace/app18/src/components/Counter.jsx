import React from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { minus, plus } from '../redux/counterSlice';

const Counter = () => {
  const { value } = useSelector((state) => {
    return state.counter;
  });

  const dispatch = useDispatch();

  return (
    <>
      <h1>Counter : {value}</h1>
      <button
        onClick={() => {
          dispatch(plus());
        }}
      >
        Plus
      </button>
      <button
        onClick={() => {
          dispatch(minus());
        }}
      >
        Minus
      </button>
    </>
  );
};

export default Counter;
