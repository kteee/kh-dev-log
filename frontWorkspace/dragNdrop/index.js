const itemArr = document.querySelectorAll(".item");
const item01 = itemArr[0];

item01.addEventListener("dragstart", function(evt){
    // console.log("dragstart~")
    evt.dataTransfer.setData("x", evt.target.innerText);
});

item01.addEventListener("dragend", function(evt){
    // console.log("dragEND~")
    evt.target.remove();
});

item01.addEventListener("drag", function(){
    // console.log("drag~~")
});

const box = document.querySelector(".box");

box.addEventListener("dragenter", function(){
    console.log("dragenter~~");
});

box.addEventListener("dragleave", function(){
    console.log("dragleave~~");
});

box.addEventListener("dragover", function(evt){
    evt.preventDefault(); // 이거 해줘야 처리가 잘됨
    console.log("dragover~~");
});

box.addEventListener("drop", function(evt){
    evt.preventDefault(); // 이거 해줘야 처리가 잘됨
    console.log("drop~~");

    box.innerHTML = "";

    const divTag = document.createElement("div");
    divTag.classList.add("item");
    divTag.innerText = evt.dataTransfer.getData("x");
    box.appendChild(divTag);

});