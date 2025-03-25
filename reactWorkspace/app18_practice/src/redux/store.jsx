import { configureStore } from '@reduxjs/toolkit';

const store = configureStore({
  reducer: {
    counter: slice,
    theme: themeSlice,
    userinfo: userinfoSlics,
  },
});

export default store;
