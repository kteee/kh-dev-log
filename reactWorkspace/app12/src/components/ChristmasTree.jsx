import React, { useContext } from 'react';
import Red from './Red';
import { KhContext, ThemeContext, UserInfoContext } from '../App';
import { useNumContext } from '../context/NumContext';

const ChristmasTree = () => {
  console.log('크리스마스 트리 랜더~~');

  const obj = useContext(KhContext);
  console.log(obj);

  const obj2 = useContext(ThemeContext);
  console.log(obj2);

  const obj3 = useContext(UserInfoContext);
  console.log(obj3);

  return <Red></Red>;
};

export default ChristmasTree;
