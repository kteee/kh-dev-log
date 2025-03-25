import { BASE_URL } from './config';

const findGalleryVoList = async (pno = 1) => {
  const resp = await fetch(`${BASE_URL}/api/gallery/list?pno=${pno}`);
  if (!resp.ok) {
    throw new Error(`HTTP ERROR !!! ${resp.status}`);
  }
  const data = await resp.json();
  return data;
};

export { findGalleryVoList };
