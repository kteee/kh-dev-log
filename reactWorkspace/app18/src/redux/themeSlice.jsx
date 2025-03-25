import { createSlice } from '@reduxjs/toolkit';

const themeSlice = createSlice({
  name: 'theme',
  initialState: { value: 100 },
  reducers: {
    dark: (state, action) => {
      state.value = 'black';
    },
    light: (state, action) => {
      state.value = 'white';
    },
  },
});

export default themeSlice.reducer;
export const { dark, light } = themeSlice.actions;
