import './App.css';
import Header from './components/Header';
import Navi from './components/Navi';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import BoardList from './pages/board/BoardList';
import BoardDetail from './pages/board/BoardDetail';
import BoardWrite from './pages/board/BoardWrite';
import BoardDelete from './pages/board/BoardDelete';

function App() {
  return (
    <BrowserRouter>
      <Header />
      <Navi />
      <Routes>
        <Route path="/board/list" element={<BoardList />} />
        <Route path="/board/detail" element={<BoardDetail />} />
        <Route path="/board/write" element={<BoardWrite />} />
        <Route path="/board/delete" element={<BoardDelete />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
