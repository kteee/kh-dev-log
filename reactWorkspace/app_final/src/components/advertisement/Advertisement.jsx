import React from 'react';
import styled from 'styled-components';

const Layout = styled.div`
  height: calc(100vh - 95px);
  position: sticky;
  top: 100px;
`;

const ImgDiv = styled.div`
  height: 100%;
  background-image: ${({ url }) => {
    return url
      ? `url(${url})`
      : `url(https://www.elle.co.kr/resources_old/online/org_online_image/el/0cc9a488-c1c3-47ff-a878-1eabf35139a2.jpg)`;
  }};
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center center;
`;

const Advertisement = ({ url, href }) => {
  return (
    <Layout>
      <a href={href} target="_blank">
        <ImgDiv url={url} />
      </a>
    </Layout>
  );
};

export default Advertisement;
