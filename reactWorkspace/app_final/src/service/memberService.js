import { BASE_URL } from './config';

const joinMember = async (formData) => {
  // async 가 붙은 함수는 promise를 리턴하게 된다
  // -> x 변수에 담고 return x; 안해도됨

  // fetch 함수 앞에 await를 달면 해당 fetch의 응답코드를 리턴
  // await : 기다려라...
  // 만약 await 없으면?? -> fetch 날아가는 동안 다음 코드 실행해버림..
  // js는 그냥 안기다리고 다음 코드 실행해버림..
  // 그래서 fetch함수 끝나기를 기다리라는 뜻
  // await 은 async 안에서만 사용 가능함 (async 없으면 못씀)

  const resp = await fetch(`${BASE_URL}/api/member/join`, {
    method: 'POST',
    headers: {
      'content-type': 'application/json',
    },
    body: JSON.stringify(formData),
  });

  // fetch 함수 실행하면.... 프로미스 객체를 리턴한다..
  // x.then();
  // x.catch();
  // new Promise((resolve, reject)=>{
  //   resolve();  // 성공시
  //   reject();   // 실패시
  // });

  if (!resp.ok) {
    throw new Error(`HTTP error ::: ${resp.status}`); // 실패시에는? 예외객체 만들면 넘겨짐
  }

  // 성공 상태 시 good 데이터를 넘긴다 (넘길 데이터를 리턴,, 성공상태가 기본,,)
  // return 'good';
};

const loginMember = async (formData) => {
  const resp = await fetch(`${BASE_URL}/api/member/login`, {
    method: 'POST',
    headers: {
      'content-type': 'application/json',
    },
    body: JSON.stringify(formData),
  });

  if (!resp.ok) {
    throw new Error(`HTTP ERROR !!! ${resp.status}`);
  }

  const token = resp.text();
  return token;
};

export { joinMember, loginMember };
