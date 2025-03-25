
const btn01 = document.querySelector("#btn01");
btn01.onclick = function(){
    console.log("고전 버튼 클릭됨!")
};

function f02() {
    console.log("인라인 버튼 클릭됨!");
}

const btn03 = document.querySelector("#btn03");
btn03.addEventListener('click', function(){
    console.log("표준 버튼 클릭됨!")
});

// btn03.addEventListener(이벤트, 함수);

const btn21 = document.querySelector("#btn2-1");
btn21.onclick = function(x){
    console.log("고전 버튼 클릭됨!")
    console.log(x.target);
    console.log(this);
};

function f2_2() {
    console.log("인라인 버튼 클릭됨!");
    console.log(window.event.target);
    console.log(this);
}

const btn23 = document.querySelector("#btn2-3");
btn23.addEventListener('click', function(x){
    console.log("표준 버튼 클릭됨!")
    console.log(x.target);
    console.log(this);
});

function fnaver(){
    // const result = confirm("네이버로 이동하시겠습니까?");
    // if(result === false) {
    //     return false;
    // } 
    // else {
    //     return true;
    // }

    return confirm("네이버로 이동하시겠습니까?");
}

const gg = document.querySelector("#gg");
gg.addEventListener("click", function(x){
    x.preventDefault(); // 기본 이벤트 막기
});


const formArr = document.querySelectorAll("form");
const formTag = formArr[0];
formTag.addEventListener("submit", function(x) {
    x.preventDefault();
})