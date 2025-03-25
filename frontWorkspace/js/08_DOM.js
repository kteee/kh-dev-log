function f01() {
    const h1node = document.createElement('h1');

    const textNode = document.createTextNode("안녕");
    h1node.appendChild(textNode);

    console.log(h1node);

    const bodyTag = document.querySelector("body");
    bodyTag.appendChild(h1node);
}

function f02(){
    const imgTag = document.createElement("img");
    imgTag.setAttribute("src", "../resources/img/person.png");
    imgTag.setAttribute("width", "300px"); 
    imgTag.setAttribute("height", "300px"); 
    imgTag.setAttribute("nick", "hong"); 
    imgTag.setAttribute("age", "20"); 

    console.log(imgTag);

    // 바디태그 가져오기
    const bodyTag = document.querySelector("body");

    // 바디태그의 자식으로 방금 만든 태그 추가하기
    bodyTag.appendChild(imgTag);
}

function f03(){
    // 요소.remove();
    const h1Arr = document.querySelectorAll('h1');
    const target = h1Arr[h1Arr.length-1];
    target.remove();
}

setInterval( () => {
    const btn02 = document.querySelector("button[onclick='f03();']");
    btn02.click();
}, 1000)


// setInterval( () => {
//     const color = document.querySelector("#game-area");
//     if(color.style.backgroundColor == 'rgb(52, 152, 219)' || color.style.backgroundColor == 'rgb(46, 204, 113)'){
//         document.querySelector("#game-area").click()}
//     , 1000;);

    