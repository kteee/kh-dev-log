import React, { useEffect, useState } from 'react';

const useKhFetch = (url, options) => {
  // fetch 호출
  // useEffect 감싸주기
  // state 만들기 : 응답받은 데이터
  // state 만들기 : 로딩중 여부 체크
  // 일반 변수 만들기 : 마운트 상태 체크
  // 클린업 함수 만들기 : 마운트 상태 변경

  let isMounted = true;

  const [state, setState] = useState();
  const [isLoading, setLoading] = useState('true');

  useEffect(() => {
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
        if (isMounted) {
          setState(data);
          setLoading(false);
        }
      });
    return () => {
      isMounted = false;
    };
  }, []);

  return { state, isLoading };
};

export default useKhFetch;
