import React from 'react';
import styled from 'styled-components';
import SideItem from './SideItem';
import { Link } from 'react-router-dom';

const SideDiv = styled.div`
  padding: 5px;

  & a {
    text-decoration: none;
  }
`;

const SectionHr = styled.hr`
  width: 215px;
  border-top: 1px solid lightgray;
  border-bottom: none;
`;

const SectionDiv = styled.div`
  font-size: 17px;
  margin: 13px 23px;
`;

const Side = ({ theme }) => {
  return (
    <SideDiv>
      <Link to="/">
        <SideItem
          theme={theme}
          sideicon="https://img.icons8.com/?size=100&id=2797&format=png&color=000000"
          sidetext="Home"
        ></SideItem>
      </Link>
      <Link to="/shorts">
        <SideItem
          theme={theme}
          sideicon="https://img.icons8.com/?size=100&id=ajczeHCWXbyR&format=png&color=000000"
          sidetext="Shorts"
        ></SideItem>
      </Link>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=87581&format=png&color=000000"
        sidetext="Subscriptions"
      ></SideItem>
      <SectionHr />
      <SectionDiv>You > </SectionDiv>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=86155&format=png&color=000000"
        sidetext="History"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=UIZhbWaCQAay&format=png&color=000000"
        sidetext="Playlists"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=423&format=png&color=000000"
        sidetext="Watch later"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=114072&format=png&color=000000"
        sidetext="Liked videos"
      ></SideItem>
      <SectionHr />
      <SectionDiv>Explore </SectionDiv>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=lhrKPeMFIFdF&format=png&color=000000"
        sidetext="Trending"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=3686&format=png&color=000000"
        sidetext="Shopping"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=5596&format=png&color=000000"
        sidetext="Music"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=9683&format=png&color=000000"
        sidetext="Movies"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=7rBT6EnGLrx9&format=png&color=000000"
        sidetext="Lives"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=15888&format=png&color=000000"
        sidetext="Gaming"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=6YtrB5VnlPqY&format=png&color=000000"
        sidetext="Sports"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=19167&format=png&color=000000"
        sidetext="Courses"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=pqiPF9zA2LNm&format=png&color=000000"
        sidetext="Podcasts"
      ></SideItem>
      <SectionHr />
      <SectionDiv>More from YouTube </SectionDiv>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=85064&format=png&color=000000"
        sidetext="YouTube Premium"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=BhQ1jBS6I2Bu&format=png&color=000000"
        sidetext="YouTube Music"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=8n8Zsyb9txE5&format=png&color=000000"
        sidetext="YouTube Kids"
      ></SideItem>
      <SectionHr />
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=4511GGVppfIx&format=png&color=000000"
        sidetext="Settings"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=8ktJZMCbXBSL&format=png&color=000000"
        sidetext="Report History"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=646&format=png&color=000000"
        sidetext="Help"
      ></SideItem>
      <SideItem
        theme={theme}
        sideicon="https://img.icons8.com/?size=100&id=37971&format=png&color=000000"
        sidetext="Send feedback"
      ></SideItem>
    </SideDiv>
  );
};

export default Side;
