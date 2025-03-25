import React from 'react';

const ThemeBtn = ({ children, f }) => {
  return <button onClick={f}>{children}</button>;
};

export default ThemeBtn;
