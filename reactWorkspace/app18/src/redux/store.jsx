// import { createStore } from 'redux';
// import reducer from './reducer';

// const store = createStore(reducer);

// export default store;
// export { COUNTER_PLUS, COUNTER_MINUS, THEME_DARK, THEME_LIGHT };
// export { counterPlus, counterMinus, themeDark, themeLight };

import { configureStore } from '@reduxjs/toolkit';
import counterReducer from './counterSlice'; // 중괄호 없이 import 하면 디폴트가 import됨
import themeReducer from './themeSlice';

const store = configureStore({
  reducer: {
    counter: counterReducer,
    theme: themeReducer,
  },
});

export default store;
