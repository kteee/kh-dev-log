import './App.css';
import Hello from './Hello';
import KhBtn from './KhBtn';
// import './App'; 이렇게 뒤에 아무것도 안붙이면 js 파일 가져온다
// css는 명시해줘야 함
import Home from './pages/Home';

function App() {
  console.log('app called~~ ');

  return (
    <>
      {/* <KhBtn str="치킨"></KhBtn>
      <KhBtn str="햄버거"></KhBtn>
      <KhBtn str="피자"></KhBtn> */}
      <Home></Home>z
    </>
  );
}

export default App;
