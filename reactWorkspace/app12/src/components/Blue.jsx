import React from 'react';
import Container from './Container';
import Green from './Green';

const Blue = () => {
  console.log('블루 랜더~~');
  return (
    <Container w="300" h="300" color="Blue">
      <Green />
      <Green />
    </Container>
  );
};

export default Blue;
