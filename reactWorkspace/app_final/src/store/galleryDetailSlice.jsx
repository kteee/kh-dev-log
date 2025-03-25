import { createSlice } from '@reduxjs/toolkit';

const galleryDetailSlice = createSlice({
  name: 'galleryDetail',
  initialState: {
    no: '',
    writerNo: '',
    title: '',
    content: '',
    enrollDate: '',
    originName: '',
    fileUrl: '',
  },
  reducers: {
    setGalleryVo: (state, action) => {
      state.no = action.payload.no;
      state.writerNo = action.payload.writerNo;
      state.title = action.payload.title;
      state.content = action.payload.content;
      state.enrollDate = action.payload.enrollDate;
      state.originName = action.payload.originName;
      state.fileUrl = action.payload.fileUrl;
    },
  },
});

export const { setGalleryVo } = galleryDetailSlice.actions;

export default galleryDetailSlice.reducer;
