import React from 'react';
import Card from './Card';

const LayoutDiv = () => {
  return (
    <div className='outer'>
      <Card cardTitle="리액트 강의" cardSrc="https://tecoble.techcourse.co.kr/static/05c747946e6af1bf9553069c57fc8845/f6810/react.jpg"></Card>
      <Card cardTitle="자바 강의" cardSrc="https://velog.velcdn.com/images/tank3a/post/b5e1bf6c-2b1e-4687-b830-c9f91ead3d1c/image.png"></Card>
      <Card cardTitle="오라클 강의" cardSrc="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoPLkgr9wqPQOlaGUUABVw8gjMZ5TYdvLCxQ&s"></Card>
      <Card cardTitle="스프링 강의" cardSrc="https://velog.velcdn.com/images/langoustine/post/fed1bc55-bea8-4dcb-b229-7fe58af600fa/image.png"></Card>
      <Card cardTitle="마이바티스 강의" cardSrc="https://velog.velcdn.com/images/sunblock99/post/a201597e-471e-4b44-9360-dd845743028d/image.jpg"></Card>
    </div>
  );
};

export default LayoutDiv;