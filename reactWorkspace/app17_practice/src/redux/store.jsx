import { createStore } from 'redux';

const initialState = {
  num: 100,
  mode: 'light',
  id: '',
  nick: 'GUEST',
  email: '',
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increase':
      return { ...state, num: state.num + 1 };
    case 'decrease':
      return { ...state, num: state.num - 1 };
    case 'light':
      return { ...state, mode: 'light' };
    case 'dark':
      return { ...state, mode: 'dark' };
    case 'login':
      return {
        ...state,
        id: action.payload.id,
        nick: action.payload.nick,
        email: action.payload.email,
      };
    case 'logout':
      return {
        ...state,
        id: '',
        nick: 'GUEST',
        email: '',
      };
    default:
      return state;
  }
};

const store = createStore(reducer);

export default store;
