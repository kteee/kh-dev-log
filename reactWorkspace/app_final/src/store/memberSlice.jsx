import { createSlice } from '@reduxjs/toolkit';
import { getPayload } from '../utils/jwtUtil';

const memberSlice = createSlice({
  name: 'member',
  initialState: {
    no: null,
    id: null,
    nick: 'GUEST',
  },
  reducers: {
    login: (state, action) => {
      const token = action.payload;
      localStorage.setItem('token', token);
      const { no, id, nick } = getPayload(token);
      state.no = no;
      state.id = id;
      state.nick = nick;
      // state.no = action.payload.no;
      // state.id = action.payload.id;
      // state.nick = action.payload.nick;
    },
    logout: (state) => {
      state.no = null;
      state.id = null;
      state.nick = 'GUEST';
    },
  },
});

const { login, logout } = memberSlice.actions;
export { login, logout };
export default memberSlice.reducer;
