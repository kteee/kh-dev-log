import './App.css';
import KhBtn from './components/KhBtn';
import KhDiv from './components/KhDiv';

function App() {
  return (
    <>
      <KhBtn str="글자글자1" />   
      <KhBtn str="글자글자2" />   
      <KhBtn />   
      <KhDiv str="디브01" />
      <KhDiv str="디브02" />
      <KhDiv />
    </>
  );
}

export default App;
