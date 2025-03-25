// 선언적 함수
// function f01() {
//     console.log("함수 실행됨");
// }

// f01();


// 익명 함수
// const x = function () {
//     console.log("익명 함수 실행됨");
// }

// x();


// 화살표 함수
// const x = () => {
//     console.log("화살표 함수 실행됨");
// }

// x();


// function f01(a, b) {
//     return a+b;
// }

// const a = function (a,b) {
//     return a+b;
// }

// const b = (a,b) => {
//     return a+b;
// }

// const c = (a,b) => a+b;

// const result = c(3,4);
// console.log(result);


// function f01(a, b) {
//     console.log(a);
//     console.log(b);
//     console.log(arguments);
// }

// f01(10,20,30,40,50);

/*
function f01() {
    return x;
    // 새롭게 함수 만들어서 리턴해도 됨
    // return () => {
    // console.log("f02 함수 실행됨"); 
    // }
}

const x = () => {
    console.log("f02 함수 실행됨");
}

// function f02() {
//     console.log("f02 함수 실행됨");
// }

const result = f01();
console.log(result);
result();
*/

// const x = () => console.log("익명함수임");
// x();

//console.log(x());

// 자바 스크립트는 접근제한자가 없음 (최근엔 생겼다는데..?) -> 이럴 때 클로저를 이용 
// function f01(){
//     const str = "hello";
//     return function() {
//         console.log(str);
//     }
// }

// const result = f01();
// result();


// const str = "console.log(10)";
// const str = "1+2+3+4+5";

// const result = eval(str);
// const result = 10/0;
// console.log(result);

// console.log(isFinite(result));
