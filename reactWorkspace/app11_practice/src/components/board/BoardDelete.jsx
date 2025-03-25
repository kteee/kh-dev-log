import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';

const BoardDelete = () => {
  const { no } = useParams();
  const [result, setResult] = useState('');

  const url = `http://192.168.40.37:8080/api/board/${no}`;
  const options = {
    method: 'DELETE',
  };

  useEffect(() => {
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
        if (data == 1) {
          setResult('성공');
        } else {
          setResult('실패');
        }
      });
  }, []);

  return <h1>삭제결과 : {result}</h1>;
};

export default BoardDelete;
