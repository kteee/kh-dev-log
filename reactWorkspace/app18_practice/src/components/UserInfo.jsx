import React from 'react';

const UserInfo = () => {
  return (
    <>
      <h1>User Info</h1>
      <h3>ID : ??</h3>
      <h3>PWD : ??</h3>
      <h3>NICK : ??</h3>
      <input type="text" placeholder="ID" />
      <br />
      <input type="text" placeholder="PWD" />
      <br />
      <input type="text" placeholder="NICK" />
      <br />
      <button>Login</button>
      <button>Logout</button>
    </>
  );
};

export default UserInfo;
