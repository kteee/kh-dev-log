import React, { useEffect, useState } from 'react';
import './FloatingHeader.css';
import Header from './Header';

const FloatingHearder = () => {
  // 스크롤 발생하면 액티브 추가하기

  const [activeStatus, setActiveStatus] = useState('');

  const handleScroll = () => {
    // 현재 스크롤의 위치가 100을 초과하면 active 추가
    if (window.scrollY > 100) {
      setActiveStatus('active');
    } else {
      setActiveStatus('');
    }
  };

  useEffect(() => {
    window.addEventListener('scroll', handleScroll);
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return <Header x="zzz" cn={`floating-header ${activeStatus}`} />;
};

export default FloatingHearder;
