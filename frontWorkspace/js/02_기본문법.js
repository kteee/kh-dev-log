// 1. 변수와 자료형

// 선언

a = 10; // 전역변수
b = 20; // 전역변수

function f01() {
    c = 30; // 전역변수
    var b = 40; // 지역변수
    console.log(window.a);
    console.log(b);
    console.log(window.b);
    console.log(window.c);
}

 // f01();

 function f02() {
    // var x = 10;
    // var x = "aaa";
    // var x = true;
    // var x = new Object(); // 객체 만들기
    // var x = null; // null 값의 타입은 object임
    // var x = new Array(); // 배열도 object 타입
    // var x = f01; // function 타입
    // x가 선언되지 않으면 undefined 타입임
    // console.log(x);
    console.log(typeof x); // x의 type 확인
 }

 f02();

 // var, let, const(상수) 차이점

 function f03() {
    // var로 만들어진 변수는 여러번 할 수 있다 (Hoisting - 선언부를 젤 위로 끌어옴) 
    // -> 문제발생
    // -> 그래서 등장한 것이 let 
    var x; 
    x=1;
    var x; 
 }

 function f04() {
    // let x;
    // x=10;
    // let x=20;
 }

 function f05() {
    const x=10;
    // x=20; const 변수는 재할당 불가
 }

// 유효 범위(스코프)
//  - 함수 안에서 var 키워드로 선언된 변수는 함수 유효 범위를 갖는다.

function f05() {
    if(1 > 0) {
        var x =123; // var 대신 let 사용하여 해결
    }
    console.log(x); // if에서만 유효한 것이 아니라 함수 전체 지역에서 살아있음
}

f05();

