import { configureStore } from '@reduxjs/toolkit';
import memberReducer from './memberSlice';
import galleryReducer from './gallerySlice';
import galleryDetailReducer from './galleryDetailSlice';
import adminReducer from './adminSlice';

const store = configureStore({
  reducer: {
    member: memberReducer,
    gallery: galleryReducer,
    galleryDetail: galleryDetailReducer,
    admin: adminReducer,
  },
});

export default store;
