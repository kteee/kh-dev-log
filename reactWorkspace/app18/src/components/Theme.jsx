import React from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { themeDark, themeLight } from '../redux/action';
import { dark, light } from '../redux/themeSlice';

const Theme = () => {
  const { value } = useSelector((state) => state.theme);

  const dispatch = useDispatch();

  return (
    <>
      <h1>Theme : {value}</h1>
      <button
        onClick={() => {
          dispatch(dark());
        }}
      >
        Dark Mode
      </button>
      <button
        onClick={() => {
          dispatch(light());
        }}
      >
        Light Mode
      </button>
      <button
        onClick={() => {
          value === 'black' ? dispatch(light()) : dispatch(dark());
        }}
      >
        Toggle
      </button>
    </>
  );
};

export default Theme;
