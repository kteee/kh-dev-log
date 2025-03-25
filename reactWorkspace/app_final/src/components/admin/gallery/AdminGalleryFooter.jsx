import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import PageButton from '../../common/PageButton';
import styled from 'styled-components';

const Layout = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
`;

const AdminGalleryFooter = ({ pageVo: pvo }) => {
  // 별칭 (pageVo를 pvo로 쓰겠다)
  const pageNoArr = [];
  let isPrevPageExist = false;
  let isNextPageExist = false;
  if (pvo.startPage !== 1) {
    isPrevPageExist = true;
  }
  for (let i = pvo.startPage; i <= pvo.endPage; ++i) {
    pageNoArr.push(i);
  }
  if (pvo.endPage !== pvo.maxPage) {
    isNextPageExist = true;
  }

  return (
    <Layout>
      {isPrevPageExist ? (
        <Link to={`/admin/gallery?pno=${pvo.startPage - 1}`}>
          <PageButton
            width={'70px'}
            height={'50px'}
            backgroundColor={'lightgray'}
          >
            이전
          </PageButton>
        </Link>
      ) : (
        ''
      )}
      {pageNoArr.map((no) => {
        return (
          <Link to={`/admin/gallery?pno=${no}`}>
            <PageButton
              width={'50px'}
              height={'50px'}
              backgroundColor={'lightgray'}
            >
              {no}
            </PageButton>
          </Link>
        );
      })}
      {isNextPageExist ? (
        <Link to={`/admin/gallery?pno=${pvo.endPage + 1}`}>
          <PageButton
            width={'70px'}
            height={'50px'}
            backgroundColor={'lightgray'}
          >
            다음
          </PageButton>
        </Link>
      ) : (
        ''
      )}
    </Layout>
  );
};

export default AdminGalleryFooter;
