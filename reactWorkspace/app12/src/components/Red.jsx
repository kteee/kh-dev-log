import React from 'react';
import Container from './Container';
import Blue from './Blue';

const Red = () => {
  console.log('레드 랜더~~');
  return (
    <Container w="800" h="600" color="Red">
      <Blue />
      <Blue />
    </Container>
  );
};

export default Red;
