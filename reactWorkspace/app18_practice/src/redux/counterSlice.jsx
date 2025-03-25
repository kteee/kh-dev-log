import { createSlice } from '@reduxjs/toolkit';

const slice = createSlice({
  name: 'counter',
  initialState: { value: 100 },
  reducers: {
    plus: (state) => {
      state.value += 1;
    },
    minus: (state) => {
      state.value -= 1;
    },
  },
});

export default slice.reducer;
export const { plus, minus } = slice.actions;
