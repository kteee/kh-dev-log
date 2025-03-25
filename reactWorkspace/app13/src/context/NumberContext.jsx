import { createContext, useContext, useState } from 'react';

// 전역 공간 만들어서 변수에 담아놓기
const NumberContext = createContext();

const NumberProvider = ({ children }) => {
  const [num, setNum] = useState(10);

  function plusOne() {
    setNum(num + 1);
  }
  function plusTwo() {
    setNum(num + 2);
  }
  function minusOne() {
    setNum(num - 1);
  }
  function minusTwo() {
    setNum(num - 2);
  }

  const vo = {
    num,
    plusOne,
    plusTwo,
    minusOne,
    minusTwo,
  };

  return (
    <>
      <NumberContext.Provider value={vo}>{children}</NumberContext.Provider>
    </>
  );
};

const useNumberContext = () => {
  return useContext(NumberContext);
};

export { NumberProvider };
export { useNumberContext };

// 컨텍스트의 밸류값 = useContext(NumberContext);
