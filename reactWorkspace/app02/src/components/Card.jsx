import React from 'react';
// rsc 하면 바로 틀 만들어줌

const Card = ( {cardSrc, cardTitle} ) => {
  
  return (
    <>
      <div className="card-wrapper">
        <div><img src={cardSrc} width="100%" height="100%" /></div>
        <div>{cardTitle}</div>
      </div>
    </>
  );
};

export default Card;