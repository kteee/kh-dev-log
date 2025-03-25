import { createSlice } from '@reduxjs/toolkit';

const gallerySlice = createSlice({
  name: 'gallery',
  initialState: {
    voList: [],
    pno: 0,
    isLoading: false,
  },
  reducers: {
    addGalleryVoList: (state, action) => {
      state.voList = [...state.voList, ...action.payload];
    },
    plusPno: (state) => {
      state.pno++;
    },
    setLoading: (state, action) => {
      state.isLoading = action.payload;
    },
  },
});

export const { addGalleryVoList, plusPno, setLoading } = gallerySlice.actions;
export default gallerySlice.reducer;
