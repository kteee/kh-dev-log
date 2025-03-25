import { createStore } from 'redux';

const initState = {
  cnt: 10,
};

const reducer = (state = initState, action) => {
  switch (action.type) {
    case 'plusOne':
      return { ...state, cnt: state.cnt + 1 };
    case 'minusOne':
      return { ...state, cnt: state.cnt - 1 };
    case 'plusTwo':
      return { ...state, cnt: state.cnt + 2 };
    case 'minusTwo':
      return { ...state, cnt: state.cnt - 2 };
    default:
      return state;
  }
};

// store = context + 리듀서

const store = createStore(reducer);

export default store;
