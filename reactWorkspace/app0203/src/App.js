import './App.css';
import Header from './components/common/Header';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import styled from 'styled-components';
import MemberMain from './components/member/MemberMain';
import BoardMain from './components/board/BoardMain';

const Layout = styled.div`
  box-sizing: border-box;
  width: 100vw;
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 10vh 10vh 70vh 10vh;
  place-items: center center;
`;

function App() {
  return (
    <BrowserRouter>
      <Layout>
        <div>로고</div>
        <Header />
        <Routes>
          <Route path="/member/*" element={<MemberMain />} />
          <Route path="/board/*" element={<BoardMain />} />
          <Route path="/notice/*" element={<h1>NOTICE</h1>} />
          <Route path="/gallery/*" element={<h1>GALLERY</h1>} />
          <Route path="/*" element={<h1>404 NOT FOUND</h1>} />
        </Routes>
        <div>푸터</div>
      </Layout>
    </BrowserRouter>
  );
}

export default App;
