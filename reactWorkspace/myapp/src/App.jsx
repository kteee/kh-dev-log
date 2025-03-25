import './App.css';
import ChatTop from './components/ChatTop';
import ChatContent from './components/ChatContent';
import ChatBottom from './components/ChatBottom';

function App() {
  return (
    <>
      <div class="chat-frame">
        <ChatTop adImg="/advertise.png"></ChatTop>
        <ChatContent profileImg="/capture01.PNG" name="심일용" content="오늘점심뭐먹지?" date="2024-12-15"></ChatContent>
        <ChatContent profileImg="/capture02.PNG" name="심투용" content="오늘저녁뭐먹지?" date="2024-12-14"></ChatContent>
        <ChatContent profileImg="/capture03.PNG" name="심삼용" content="리액트 어렵다" date="2024-12-13"></ChatContent>
        <ChatContent profileImg="/capture04.PNG" name="심사용" content="재밌는 리액트 공부" date="2024-12-12"></ChatContent>
        <ChatContent profileImg="/capture05.PNG" name="KH단톡방" content="내일까지 다들 과제 잘해오세요" date="2024-12-11"></ChatContent>
        <ChatContent profileImg="/capture06.PNG" name="홍길동" content="집에가고싶다" date="2024-12-10"></ChatContent>
        <ChatContent profileImg="/capture08.PNG" name="김철수" content="너무졸려요" date="2024-12-10"></ChatContent>
        <ChatBottom></ChatBottom>
      </div>
    </>
  );
}

export default App;
