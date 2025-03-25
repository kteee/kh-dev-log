import './App.css';
import Chat from './components/Chat';
import { BrowserRouter, Link, Route, Routes } from 'react-router-dom';

function App() {
  return (
    <>
      <BrowserRouter>
        <h1>홈페이지</h1>
        <hr />
        <div>
          <Link to={'/topic01'}>토픽01</Link>
          <br />
          <Link to={'/topic02'}>토픽02</Link>
          <br />
          <Link to={'/topic03'}>토픽03</Link>
        </div>
        <Routes>
          <Route path="/topic01" element={<Chat topic={'java'} />} />
          <Route path="/topic02" element={<Chat topic={'oracle'} />} />
          <Route path="/topic03" element={<Chat topic={'kh'} />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
