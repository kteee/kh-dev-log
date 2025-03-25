// 반복문 
console.log("hello~~");

const arr = [];
arr.push("사과");
arr.push("딸기");
arr.push("포도");
arr.push("수박");
arr.push("망고");
arr.push("키위");

// for(let i=0; i<arr.length; i++) {
//   console.log(arr[i]);
// }

// for(const x of arr) {
//   console.log(x);
// }

console.log("========== forEach ==========")
// 요소를 하나하나씩 호출함
arr.forEach( f ); 

function f(data){
  console.log(data);
}

console.log("-----------------------")

const result1 = arr.
forEach( (data)=>{console.log(data);} );
console.log("result1: " , result1 ); // result1 : undefined 출력


console.log("========== map ==========")

arr.map( (data)=>{console.log(data);} ); 

console.log("-----------------------")

const result2 = arr.map( (data)=>{console.log(data);} );
console.log("result2: " , result2 );

console.log("-----------------------")

const result3 = arr.map(f);
console.log("result3:", result3);

function f(data){
  console.log(data);
  return data;
}