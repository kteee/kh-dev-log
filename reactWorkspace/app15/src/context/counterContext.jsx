import { createContext, useReducer, useContext } from 'react';

const CounterContext = createContext();

const CounterProvider = ({ children }) => {
  const reducer = (state, action) => {
    switch (action.type) {
      case 'plusOne':
        return state + 1;
      case 'minusOne':
        return state - 1;
      case 'plusTwo':
        return state + 2;
      case 'minusTwo':
        return state - 2;
    }
  };

  const [cnt, dispatch] = useReducer(reducer, 100);

  const initVlue = {
    cnt,
    dispatch,
  };

  return (
    <CounterContext.Provider value={initVlue}>
      {children}
    </CounterContext.Provider>
  );
};

const useCounter = () => {
  return useContext(CounterContext);
};

export { CounterContext, CounterProvider, useCounter };
