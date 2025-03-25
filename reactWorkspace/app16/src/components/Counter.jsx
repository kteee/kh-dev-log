import React from 'react';
import Display from './Display';
import KhBtn from './KhBtn';
import { useDispatch, useSelector } from 'react-redux';

const Counter = () => {
  const cnt = useSelector((x) => x.cnt); // useSelector(); 하면 state 리턴

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
      ></KhBtn>
      <KhBtn
        str="minusOne"
        f={() => {
          dispatch({
            type: 'minusOne',
          });
        }}
      ></KhBtn>
      <KhBtn
        str="plusTwo"
        f={() => {
          dispatch({
            type: 'plusTwo',
          });
        }}
      ></KhBtn>
      <KhBtn
        str="minusTwo"
        f={() => {
          dispatch({
            type: 'minusTwo',
          });
        }}
      ></KhBtn>
    </>
  );
};

export default Counter;
