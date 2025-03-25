import { createStore } from 'redux';

const initialState = {
  cnt: 0,
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'plusOne':
      return { cnt: state.cnt + 1 };
    case 'minusOne':
      return { cnt: state.cnt - 1 };
    case 'plusTwo':
      return { cnt: state.cnt + 2 };
    case 'minusTwo':
      return { cnt: state.cnt - 2 };
    default:
      return state;
  }
};

const store = createStore(reducer);

export default store;
