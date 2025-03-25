import React from 'react';
import ThemeDisplay from './ThemeDisplay';
import ThemeBtn from './ThemeBtn';
import { useDispatch } from 'react-redux';

const Theme = () => {
  const dispatch = useDispatch();
  return (
    <>
      <ThemeDisplay />
      <ThemeBtn
        f={() => {
          dispatch({
            type: 'dark',
          });
        }}
      >
        다크모드
      </ThemeBtn>
      <ThemeBtn
        f={() => {
          dispatch({
            type: 'light',
          });
        }}
      >
        라이트모드
      </ThemeBtn>
    </>
  );
};

export default Theme;
