import React from 'react';
//import KhBtn from './KhBtn';
import { Button } from '@mui/material';

const Hello = () => {
  return (
    <>
      <h1>HELLO!</h1>
      {/* <KhBtn w="500px">버튼zzz</KhBtn> */}
      <Button size="small" variant="contained">
        Contained
      </Button>
      <Button size="medium" variant="contained">
        Contained
      </Button>
      <Button size="large" variant="contained">
        Contained
      </Button>
    </>
  );
};

export default Hello;
