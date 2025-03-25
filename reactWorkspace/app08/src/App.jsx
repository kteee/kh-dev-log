import './App.css';
import BoardList from './components/BoardList';
import Navi from './components/Navi';
import NoticeList from './components/NoticeList';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Welcome from './components/Welcome';

function App() {
  return (
    <BrowserRouter>
      <Welcome>
        <mark>
          <strong>welcome~~</strong>
        </mark>
      </Welcome>
      <Navi />
      <Routes>
        <Route path="/board" element={<BoardList />}></Route>
        <Route path="/notice" element={<NoticeList />}></Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
