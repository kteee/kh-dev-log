import './App.css';
import Board from './pages/Board';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Notice from './pages/Notice';
import Login from './pages/Login';
import Home from './pages/Home';

function App() {
  return (
    <BrowserRouter basename={process.env.PUBLIC_URL}>
      <Routes>
        <Route path="/board" element={<Board />} />
        <Route path="/notice" element={<Notice />} />
        <Route path="/login" element={<Login />} />
        <Route path="/*" element={<Home />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
