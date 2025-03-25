
import './App.css';
import {BrowserRouter , Routes , Route} from 'react-router-dom';
import Navi from './components/Navi';

function App() {
  
  const arr = [];
  arr.push("딸기");
  arr.push("사과");
  arr.push("포도");
  
  function f(data){
    return <h3>{data}</h3>;
  }

  return (
    <>
      <h1>홈페이지</h1>
      {arr.map(f)}
      <BrowserRouter>
      <Navi></Navi>
        <Routes>
          <Route path='board' element={ <h2>게시글 작성</h2> } />
          <Route path='notice' element={ <h2>공지사항 작성</h2> } />
          <Route path='gallery' element={ <h2>갤러리 작성</h2> } />
          <Route path='member' element={ <h2>회원가입</h2> } />
          <Route path='*' element={ <h2>404 Not Found</h2> } /> 
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
