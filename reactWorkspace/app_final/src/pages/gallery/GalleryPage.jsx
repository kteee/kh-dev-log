import React, { useEffect, useRef, useState } from 'react';
import './GalleryPage.css';
import styled from 'styled-components';
import GalleryCard from '../../components/gallery/GalleryCard';
import { useDispatch, useSelector } from 'react-redux';
import {
  addGalleryVoList,
  plusPno,
  setLoading,
} from '../../store/gallerySlice';
import GalleryDetailModal from '../../components/gallery/GalleryDetailModal';
import { setGalleryVo } from '../../store/galleryDetailSlice';

const Layout = styled.div`
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
`;

const GalleryPage = () => {
  const API_SERVER = process.env.REACT_APP_SERVER_ROOT;
  const bottomTarget = useRef(null);

  //Gallery Modal 관련
  const [modalStatus, setModalStatus] = useState('');
  const openModal = () => {
    setModalStatus('active-flex');
  };
  const closeModal = () => {
    setModalStatus('');
  };

  const showGalleryModal = (e) => {
    const no = e.target.getAttribute('no');
    console.log('no : ', no);
    fetch(`http://${API_SERVER}/api/gallery/${no}`)
      .then((resp) => resp.json())
      .then((data) => {
        dispatch(setGalleryVo(data));
      });
    openModal();
  };

  //infinite scroll useEffect start
  useEffect(() => {
    const handleObserve = (entry) => {
      if (entry[0].isIntersecting) {
        dispatch(plusPno());
      }
    };
    const options = {
      threshold: 0,
    };
    const observer = new IntersectionObserver(handleObserve, options);
    observer.observe(bottomTarget.current);
  }, []); //infinite scroll useEffect end

  const dispatch = useDispatch();
  const { voList, pno, isLoading } = useSelector((state) => {
    return state.gallery;
  });

  //fetch gallery list start
  useEffect(() => {
    //pno 0 일 때 막기
    if (pno === 0) {
      return;
    }
    //같은페이지로 또 요청하는거 막음
    if (pno * 10 <= voList.length) {
      return;
    }
    //로딩중일때 또 요청하는 막음
    if (isLoading) {
      return;
    }
    dispatch(setLoading(true));
    //갤러리 목록 불러오기
    fetch(`http://${API_SERVER}/api/gallery/list?pno=${pno}`)
      .then((resp) => resp.json())
      .then((data) => {
        dispatch(addGalleryVoList(data.galleryVoList));
        dispatch(setLoading(false));
      });
  }, [pno]); //fetch gallery list end

  return (
    <>
      <GalleryDetailModal modalStatus={modalStatus} closeModal={closeModal} />
      <Layout onClick={showGalleryModal}>
        {voList.map((vo) => {
          return <GalleryCard key={vo.no} vo={vo} />;
        })}
        {isLoading ? (
          <h1>로딩중...</h1>
        ) : (
          <h1
            ref={bottomTarget}
            // onClick={() => {
            //   dispatch(plusPno());
            // }}
          >
            더보기
          </h1>
        )}
      </Layout>
    </>
  );
};

export default GalleryPage;
