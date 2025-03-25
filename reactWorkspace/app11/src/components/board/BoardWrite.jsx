import React, { useState } from 'react';

const BoardWrite = () => {
  const [voData, setVoData] = useState({});

  function write() {
    const url = 'http://192.168.40.44:8080/api/board';
    const options = {
      method: 'POST',
      headers: {
        'Content-type': 'application/json',
      },
      body: JSON.stringify(voData),
    };
    fetch(url, options)
      .then((resp) => resp.json())
      .then((data) => {
        console.log('write result : ', +data);
      });
  }

  const f = (e) => {
    const obj = {
      ...voData,
      [e.target.name]: e.target.value,
    };
    setVoData(obj);
  };

  return (
    <div>
      <input type="text" placeholder="제목" name="title" onChange={f} />
      <br />
      <input type="text" placeholder="작성자" name="writer" onChange={f} />
      <br />
      <button onClick={write}>작성하기</button>
    </div>
  );
};

export default BoardWrite;
