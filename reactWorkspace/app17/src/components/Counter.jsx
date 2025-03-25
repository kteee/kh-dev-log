import React from 'react';
import Display from './Display';
import KhBtn from './KhBtn';
import { Provider, useSelector, useDispatch } from 'react-redux';

const Counter = () => {
  const cnt = useSelector((state) => {
    return state.cnt;
  });

  const dispatch = useDispatch();

  return (
    <>
      <Display cnt={cnt} />
      <KhBtn
        str="plusOne"
        f={() => {
          dispatch({
            type: 'plusOne',
          });
        }}
      />
      <KhBtn
        str="minusOne"
        f={() => {
          dispatch({
            type: 'minusTwo',
          });
        }}
      />
      <KhBtn
        str="plusTwo"
        f={() => {
          dispatch({
            type: 'plusTwo',
          });
        }}
      />
      <KhBtn
        str="minusTwo"
        f={() => {
          dispatch({
            type: 'minusTwo',
          });
        }}
      />
    </>
  );
};

export default Counter;
