function f01() {
    console.log("배열의 선언, 초기화 테스트")

    // let x = new Array(); 
    let x = [];     // 위와 똑같은 기능 
    x[0] = "하나";
    x[1] = "둘";
    x[2] = 3.14;
    x[3] = true;

    console.log(x);
}

function test01(){
    console.log("indexOf 테스트");

    // let x = [];
    // x[0] = "사과";
    // x[1] = "포도";
    // x[2] = "자두";

    let x = ["사과", "포도", "자두"]; // 선언과 동시에 값 설정
    let result = x.indexOf("포도");
    console.log(result);
}

function test02(){
    console.log("concat test");

    let a = [1,2,3,4,5];
    let b = ["하나","둘","셋"];

    let result = a.concat(b);
    console.log(result);
}

function test03(){
    console.log("join test");

    let x = ["치킨", "피자", "햄버거"];

    let result = x.join("+");
    console.log(result);
}

function test04(){
    console.log("reverse test");

    let x = ["hi",10,20,true,"bye"];
    x.reverse();
    console.log(x);
}

function test05(){
    console.log("sort test");

    // 숫자기준 정렬x (문자기준 정렬임)
    let x = [20,10,5,99,185,1];
    x.sort();
    console.log(x);
}

function test06(){
    console.log("push, pop test");

    let x = [];
    x.push("a");
    x.push("b");
    x.push("c");

    console.log(x);

    console.log(x.pop());
    console.log(x);
}

function test07(){
    console.log("shift, unshift test");

    let x = ["하나", "둘", "셋"];

    let result = x.shift();
    console.log(result);
    console.log(x);

    x.unshift("zzz");
    console.log(x);
}

function test08(){
    console.log("slice, splice test");

    let x = [1,2,3,4,5];

    // let result = x.slice(1,4);
    // let result = x.slice(2);
    // console.log(result);
    // console.log(x);

    let result = x.splice(2, 1, 'hello', 'world', 'java');
    console.log(x);
}