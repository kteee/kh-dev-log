import { useReducer } from 'react';
import './App.css';
import Display from './components/Display';
import KhBtn from './components/KhBtn';

function App() {
  function reducer(state, action) {
    switch (action.type) {
      case 'plusOne':
        return state + 1;
      case 'minusOne':
        return state - 1;
      case 'plusTwo':
        return state + 2;
      case 'minusTwo':
        return state - 2;
      default:
        return state;
    }
  }

  const initialState = 100;
  const [num, dispatch] = useReducer(reducer, initialState);

  return (
    <>
      <h1>Counter</h1>
      <Display num={num} />
      <KhBtn
        str="plusOne"
        f={() => {
          dispatch({ type: 'plusOne' });
        }}
      />
      <KhBtn
        str="minusOne"
        f={() => {
          dispatch({ type: 'minusOne' });
        }}
      />
      <KhBtn
        str="plusTwo"
        f={() => {
          dispatch({ type: 'plusTwo' });
        }}
      />
      <KhBtn
        str="minusTwo"
        f={() => {
          dispatch({ type: 'minusTwo' });
        }}
      />
    </>
  );
}

export default App;
