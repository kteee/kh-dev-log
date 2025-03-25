import './App.css';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import BoardList from './components/board/BoardList';
import BoardDetail from './components/board/BoardDetail';
import BoardWrite from './components/board/BoardWrite';
import Home from './components/Home';
import BoardDelete from './components/board/BoardDelete';

function App() {
  return (
    <BrowserRouter>
      <h1>홈페이지</h1>
      <Link to="/board/list">게시글 목록 </Link>
      <Link to="/board/write">게시글 작성</Link>
      <hr />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/board/list" element={<BoardList />} />
        <Route path="/board/detail/:no" element={<BoardDetail />} />
        <Route path="/board/write" element={<BoardWrite />} />
        <Route path="/board/del/:no" element={<BoardDelete />} />
        <Route path="/*" element={<h2>잘못된 경로입니다. 404 NOT FOUNT</h2>} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
