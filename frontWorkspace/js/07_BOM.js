function f01(){
    window.open("https://www.naver.com" , "naver", "width=300, height=300, left=300"); 
}

function f02(){
    // window.setTimeout(함수명, 시간);
    // window.setTimeout(hello, 2000);
    const timer = window.setTimeout(() => {
        console.log("hello~~");
    }, 2000);

    //clearTimeout(timer);
}

// function hello(){
//     console.log("hihi~~");
// }

function f03() {
    let tab;
    window.setTimeout( function(){
        tap = window.open();
    }, 3000 );

    window.setTimeout(() => {
        tap.close();
    }, 6000)
}

function f04(){
    const timer = window.setInterval( function(){
        console.log("3초 지남!")
    }, 3000)

    window.setTimeout( () => {
        clearInterval(timer);
    } , 10000)

}

// window. 이런애들은 생략 해도 된다. 
// window.console.log -> console.log 
// window.setTimeout -> setTimeout

function f05(){
    // location.reload();  // 새로고침
    // location.href="zzzzzzzzz";  // 상대경로 기준
    // location.href="/js/03_배열.html" // 절대경로 기준
    // location.href="http://www.naver.com";
    location.assign("http://www.naver.com");
    // location.replace("http://www.naver.com"); // 방문기록x -> 뒤로가기 안됨
}

function f06(){
   // history.back(); // 뒤로가기
   // history.forward();  //앞으로가기

    history.go(-1);  // 숫자만큼 뒤로가기
   // history.go(1); // 숫자만큼 앞으로가기
}

function f07(){
    console.log(navigator);
}


function f08(){
    console.log(screen);
}