import './App.css';
import BoardList from './components/BoardList';
import Hello from './components/Hello';
import NoticeList from './components/NoticeList';
import {BrowserRouter , Routes, Route} from 'react-router-dom';
import World from './components/World';
import Counter from './components/Counter';

function App() {
  return (
    <>
    <BrowserRouter>
      {/* <Hello /> */}
      <World />
      <Counter></Counter>
      <Routes>
        <Route path='/board' element={ <BoardList /> } />
        <Route path='/notice' element={ <NoticeList /> } />
      </Routes>
    </BrowserRouter>
    </>
  );
}

export default App;
