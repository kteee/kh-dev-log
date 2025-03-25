import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import Hello from './Hello';
// import {Hello , World, Hi, Bye} from 'Hello.jsx';  
// 이렇게 여러개 한번에 import 도 가능하다
// 별칭은 as 붙이면 됨

const rootElem = document.querySelector("#root")
const root = ReactDOM.createRoot(rootElem);
root.render( <App /> );

