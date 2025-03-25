const editBtn = document.querySelector("#edit-form input[type=button]");

editBtn.addEventListener("click", function(evt){
    const idTag = document.querySelector("#edit-form input[name=id]");
    const nickTag = document.querySelector("#edit-form input[name=nick]");

    idTag.removeAttribute("disabled");
    nickTag.removeAttribute("disabled");

    editBtn.remove();

    const newInputTag = document.createElement("input");
    newInputTag.setAttribute("type", "submit");
    newInputTag.setAttribute("value", "서브밋");

    const formTag = document.querySelector("#edit-form");
    formTag.appendChild(newInputTag);

});