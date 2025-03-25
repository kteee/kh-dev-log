import { createSlice } from '@reduxjs/toolkit';

const counterSlice = createSlice({
  name: 'counter',
  initialState: { value: 100 },
  reducers: {
    plus: (state, action) => {
      state.value += 1;
    },
    minus: (state, action) => {
      state.value -= 1;
    },
    // 새로운 객체 값을 할당하는 것이 아닌 기존값 업데이트 해도 알아서 바꿔줌
    // ...state 이런 전개함수 안해도 됨
  },
});

export default counterSlice.reducer;
export const { plus, minus } = counterSlice.actions;
