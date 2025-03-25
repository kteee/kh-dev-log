import { BASE_URL } from './config';

const loginAdmin = async (formData) => {
  const resp = await fetch(`${BASE_URL}/api/admin/login`, {
    method: 'POST',
    headers: {
      'content-type': 'application/json',
    },
    body: JSON.stringify(formData),
  });
  if (!resp.ok) {
    throw new Error(`HTTP ERROR !!! ${resp.status}`);
  } // 성공시
  const token = resp.text(); // 실패 시
  return token; // 토큰 리턴
};

const deleteGalleryVo = async (no) => {
  if (!no) {
    alert('failed to delete ... contact ADMIN plz');
    return;
  }
  fetch(`${BASE_URL}/api/admin/gallery/delete`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      token: localStorage.getItem('token'),
    },
    body: JSON.stringify({ no }),
    // credentials: 'include',
  });
};

export { loginAdmin, deleteGalleryVo };
