import React, { useState } from 'react';
import styled from 'styled-components';
import Header from '../components/Header';
import Navi from '../components/Navi';
import Main from '../components/Main';
import Footer from '../components/Footer';

const LayoutDiv = styled.div`
width: 800px;
height: 100vh;
background-color: ${ (props)=> {return props.theme === 'dark' ? 'darkgray' : '#ebebeb'} };
margin: 0 auto; 
display: grid;
grid-template-rows: 1fr 1fr 7fr 1fr;
grid-template-columns: 1fr;
`;  

const Home = () => {

  // const [theme, setTheme] = useState("light");

  const arr = useState();
  const state = arr[0];
  const setState = arr[1];

  function f01(){
    setState("dark");
  }

  function f02(){
    setState("light");
  }

  return (
    <>
      <button onClick={ f01 }>Dark</button>
      <button onClick={ f02 }>Light</button>
      <LayoutDiv theme={state}>
        <Header></Header>
        <Navi></Navi>
        <Main></Main>
        <Footer></Footer>
      </LayoutDiv>
    </>
  );
};

export default Home;