import React from 'react';

const CounterBtn = ({ children, f }) => {
  return <button onClick={f}>{children}</button>;
};

export default CounterBtn;
