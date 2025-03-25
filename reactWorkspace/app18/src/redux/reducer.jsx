// import { COUNTER_PLUS, COUNTER_MINUS, THEME_DARK, THEME_LIGHT } from './action';

import { combineReducers } from 'redux';
import counterReducer from './counterReducer';
import themeReducer from './themeReducer';

// const initialState = {
//   counter: {
//     value: 100,
//   },
//   theme: {
//     value: 'gray',
//   },
// };

// const reducer = (state = initialState, action) => {
//   // reducer는 state, action 두개의 변수를 전달받음
//   // 리턴값이 state에 저장
//   switch (action.type) {
//     case COUNTER_PLUS:
//       return { ...state, counter: { value: state.counter.value + 1 } };
//     case COUNTER_MINUS:
//       return { ...state, counter: { value: state.counter.value - 1 } };
//     case THEME_DARK:
//       return { ...state, theme: { value: 'black' } };
//     case THEME_LIGHT:
//       return { ...state, theme: { value: 'white' } };
//     default:
//       return state;
//   }
// };

// ======= 컴바인 리듀서 활용 방식 =======

const reducer = combineReducers({
  c: counterReducer,
  t: themeReducer,
});

export default reducer;
