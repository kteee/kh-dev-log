// function khButton(){
//     const buttonElement = document.createElement("button");
//     buttonElement.innerText = "클릭하세요";

//     const bodyTag = document.querySelector("body");
//     bodyTag.appendChild(buttonElement);
// }

// function khH1(){
//     const h1Element = document.createElement("h1");
//     h1Element.innerText = "Hello world";

//     const bodyTag = document.querySelector("body");
//     bodyTag.appendChild(h1Element);
// }

// khButton();
// khH1();

function khElement({tagName, text}){

    // const tagName = obj.tagName;
    // const text = obj.text;

    // const {tagName, text} = obj;

    const element = document.createElement(tagName);
    element.innerText = text;

    const bodyTag = document.querySelector("body");
    bodyTag.appendChild(element);
}

const obj01 = {
    "tagName" : "div" ,
    "text" : "div입니다" 
};

const obj02 = {
    "tagName" : "h1" ,
    "text" : "h1입니다" 
};

const obj03 = {
    "tagName" : "button" ,
    "text" : "button입니다" 
};

// khElement("div", "div입니다");
// khElement("h1", "h1입니다");
// khElement("button", "버튼입니다");

khElement(obj01);
khElement(obj02);
khElement(obj03);