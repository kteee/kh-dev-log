import React, { useEffect, useState } from 'react';

const BoardList = () => {

  // const obj = useParams(); 
  // 객체를 리턴한다 
  // console.log(obj.x) 
  // x의 url 파라미터를 가리킨다

  const [voList, setVoList] = useState([]);

  // fetch 함수로 비동기 통신하기
  useEffect( ()=>{

    fetch("http://127.0.0.1:8080/api/board")
    .then( resp => resp.json() )
    .then( voList => {
      console.log(voList); 
      setVoList(voList);
    } )
    ;

  }, [] );

  
  return (
    <>
      <h2>게시글 리스트</h2>
      <hr />
      <table>
        <thead>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
          </tr>
        </thead>
        <tbody>
          {/* { ()=>{
            return <tr>
                    <td>{vo1.no}</td>
                    <td>{vo1.title}</td>
                    <td>{vo1.writer}</td>
                   </tr>
          } }
          <tr>
            <td>{vo1.no}</td>
            <td>{vo2.title}</td>
            <td>{vo2.writer}</td>
          </tr>
          <tr>
            <td>{vo3.no}</td>
            <td>{vo3.title}</td>
            <td>{vo3.writer}</td>
          </tr> */}

          { voList.map( ( vo )=>{ return <tr>
            <td>{vo.no}</td>
            <td>{vo.title}</td>
            <td>{vo.writer}</td>
          </tr>} ) }

        </tbody>
      </table>
    </>
    );
};

export default BoardList;