import React from 'react';

const BoardDelete = () => {
  function del() {
    const url = 'http://192.168.40.44:8080/api/board';
    const options = {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        no: 148,
      }),
    };
    fetch(url, options)
      .then((reps) => reps.json())
      .then((data) => {
        console.log(data);
      });
  }

  return (
    <>
      <h1>게시글 삭제</h1>
      <button onClick={del}>게시글 삭제 호출!</button>
    </>
  );
};

export default BoardDelete;
