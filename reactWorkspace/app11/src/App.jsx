import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import BoardList from './components/board/BoardList';
import BoardDetail from './components/board/BoardDetail';
import BoardWrite from './components/board/BoardWrite';

function App() {
  return (
    <>
      <h1>환영합니다~</h1>
      <hr />
      <BrowserRouter>
        <Routes>
          <Route path="/board/list" element={<BoardList />} />
          <Route path="/board/detail" element={<BoardDetail />} />
          <Route path="/board/write" element={<BoardWrite />} />
          <Route
            path="/*"
            element={<h1>잘못된 경로입니다. 404 NOT FOUNT</h1>}
          />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
