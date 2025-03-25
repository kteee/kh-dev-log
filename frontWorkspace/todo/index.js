function addTodo(){
    const str = document.querySelector("#newTodo").value;

    const todoArrStr = localStorage.getItem("todo");
    // 로컬시스템에서 가져온 문자열을 이용하여 만든 배열
    let todoArr = JSON.parse(todoArrStr);

    if(todoArr === null) {
        todoArr = [];
    }

    let seq_ = localStorage.getItem("seq");
    if(seq_ == null) {
        seq_ = 1;
    }

    const seq = parseInt(seq_);
    const todoObj = {
        no : seq ,
        todoName: str ,  
        done : false
    };

    //seq++;
    localStorage.setItem("seq", seq+1);

    todoArr.push(todoObj);

    localStorage.setItem("todo", JSON.stringify(todoArr));

    showTodoList();
}           

function showTodoList(){
    // 데이터 가져오기 (문자열)
    const str = localStorage.getItem("todo");.,
    // 데이터 변환하기 (문자열->객체배열)
    const todoArr = JSON.parse(str);
    // 객체배열을 이용하여 tr요소 만들기
    const tbodyTag = document.querySelector("tbody");
    tbodyTag.innerHTML="";

    for(let i=0; i<todoArr.length; i++) {

        const todoObj = todoArr[i];

        const trTag = document.createElement("tr");
        const tdTag1 = document.createElement("td");
        const tdTag2 = document.createElement("td");
        const tdTag3 = document.createElement("td");

        if(todoObj.done) {
            tdTag1.classList.add("text-strike");
        }
        const textNode = document.createTextNode(todoObj.todoName);
        const inputTag = document.createElement("input");
        inputTag.setAttribute("onclick", `updateTodo(${todoObj.no}, this);`);
        inputTag.setAttribute("type", "checkbox");
        
        if(todoObj.done) {
            inputTag.setAttribute("checked", "checked");
        }

        const buttonTag = document.createElement("button");
        const buttonTxtNode = document.createTextNode("삭제");
        //buttonTag.setAttribute("onclick", "deleteTodo("+todoObj.no+");");
        buttonTag.setAttribute("onclick", `deleteTodo(${todoObj.no});`);
        buttonTag.appendChild(buttonTxtNode);

        tdTag1.appendChild(textNode);
        tdTag2.appendChild(inputTag);
        tdTag3.appendChild(buttonTag);

        trTag.appendChild(tdTag1);
        trTag.appendChild(tdTag2);
        trTag.appendChild(tdTag3);

        // tr 요소를 table > tbody 에 넣기
        tbodyTag.appendChild(trTag);
    }
    
}

window.onload = function(){
    showTodoList();
    showDoneList();
}

function deleteTodo(num) {
    const todoArrStr = localStorage.getItem("todo");
    const todoArr = JSON.parse(todoArrStr);
    
    // const newTodoArr = [];

    for(let i = 0; i < todoArr.length; ++i){
        const todoObj = todoArr[i];
        if(todoObj.no == num){
            todoArr.splice(i,1);
            break;
        }
    //    newTodoArr.push(todoObj);
    }
    localStorage.setItem("todo" , JSON.stringify(todoArr));
    showTodoList();
}

function updateTodo(num, checkBoxTag){
    const todoArrStr = localStorage.getItem("todo");
    const todoArr = JSON.parse(todoArrStr);
    for(let i = 0; i<todoArr.length; i++){
        const todoObj = todoArr[i];
        if(todoObj.no == num) {
            todoObj.done = checkBoxTag.checked;
            break;
        }
    }
    localStorage.setItem("todo", JSON.stringify(todoArr));

    const x = checkBoxTag.parentNode.parentNode.children[0];
    x.classList.toggle("text-strike");

    createDoneList();
    window.onload();
}

function createDoneList() {
    const todoArrStr = localStorage.getItem("todo");
    const todoArr = JSON.parse(todoArrStr);
    const doneList = [];

    for(let i = 0; i<todoArr.length; i++) {
        const todoObj = todoArr[i];
        if(todoObj.done){
            doneList.push(todoObj);
        };
    }
    localStorage.setItem("doneList", JSON.stringify(doneList));
}

function showDoneList(){
    createDoneList();
    // 데이터 가져오기 (문자열)
    const str = localStorage.getItem("doneList");
    // 데이터 변환하기 (문자열->객체배열)
    const doneArr = JSON.parse(str);
    // 객체배열을 이용하여 tr요소 만들기
    const tbodyTag = document.querySelectorAll("tbody")[1];
    tbodyTag.innerHTML="";

    for(let i=0; i<doneArr.length; i++) {

        const doneObj = doneArr[i];

        const trTag = document.createElement("tr");
        const tdTag1 = document.createElement("td");
        const tdTag2 = document.createElement("td");
        const tdTag3 = document.createElement("td");

        if(doneObj.done) {
            tdTag1.classList.add("text-strike");
        }
        const textNode = document.createTextNode(doneObj.todoName);
        const inputTag = document.createElement("input");
        inputTag.setAttribute("onclick", `updateTodo(${doneObj.no}, this);`);
        inputTag.setAttribute("type", "checkbox");
        
        if(doneObj.done) {
            inputTag.setAttribute("checked", "checked");
        }

        const buttonTag = document.createElement("button");
        const buttonTxtNode = document.createTextNode("삭제");
        //buttonTag.setAttribute("onclick", "deleteTodo("+doneObj.no+");");
        buttonTag.setAttribute("onclick", `deleteTodo(${doneObj.no});`);
        buttonTag.appendChild(buttonTxtNode);

        tdTag1.appendChild(textNode);
        tdTag2.appendChild(inputTag);
        tdTag3.appendChild(buttonTag);

        trTag.appendChild(tdTag1);
        trTag.appendChild(tdTag2);
        trTag.appendChild(tdTag3);

        // tr 요소를 table > tbody 에 넣기
        tbodyTag.appendChild(trTag);

    }   
}


