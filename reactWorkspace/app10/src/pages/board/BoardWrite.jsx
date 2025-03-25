import React from 'react';

const BoardWrite = () => {
  function write() {
    let isMounted = true;
    const url = 'http://192.168.40.44:8080/api/board';
    const options = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        title: '배부르고 졸리다',
        writer: '끼요옷',
      }),
    };

    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
      });
  }

  return (
    <>
      <h1>게시글 등록</h1>
      <button onClick={write}>게시글 작성 호출!</button>
    </>
  );
};

export default BoardWrite;
