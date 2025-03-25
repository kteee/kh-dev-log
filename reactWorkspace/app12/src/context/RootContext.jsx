import React from 'react';
import { KhContext, ThemeContext, UserInfoContext } from '../App';
import { NumProvider } from './NumContext';

const RootContext = ({ children }) => {
  const obj = {
    product: '종이컵',
    price: 1000,
  };

  const obj2 = {
    theme: 'dark',
  };

  const obj3 = {
    id: 'user01',
    pwd: '1111',
    nick: '홍길동',
  };

  return (
    <>
      <UserInfoContext value={obj3}>
        <ThemeContext.Provider value={obj2}>
          <KhContext.Provider value={obj}>
            <NumProvider>{children}</NumProvider>
          </KhContext.Provider>
        </ThemeContext.Provider>
      </UserInfoContext>
    </>
  );
};

export default RootContext;
