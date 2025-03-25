import { createSlice } from '@reduxjs/toolkit';
import { getPayload } from '../utils/jwtUtil';

const adminSlice = createSlice({
  name: 'admin',
  initialState: {
    no: null,
    id: null,
  },
  reducers: {
    login: (state, action) => {
      const token = action.payload;
      localStorage.setItem('token', token);
      const { no, id, nick } = getPayload(token);
      state.no = no;
      state.id = id;
      state.nick = nick;
    },
    logout: (state) => {
      localStorage.removeItem('token');
      state.no = null;
      state.id = null;
      state.nick = null;
    },
  },
});

export const { login, logout } = adminSlice.actions;

export default adminSlice.reducer;
