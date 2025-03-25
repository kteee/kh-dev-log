import { createContext, useContext, useState } from 'react';

const NumContext = createContext();

const NumProvider = ({ children }) => {
  const [num, setNum] = useState(0);

  return (
    <NumContext.Provider value={[num, setNum]}>{children}</NumContext.Provider>
  );
};

const useNumContext = () => {
  return useContext(NumContext);
};

export { NumProvider, useNumContext };
