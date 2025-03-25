import React from 'react';
import { useSelector } from 'react-redux';

const ThemeDisplay = () => {
  const mode = useSelector((state) => {
    return state.mode;
  });
  return <h2>테마색상 : {mode}</h2>;
};

export default ThemeDisplay;
