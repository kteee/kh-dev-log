window.onload = function(){
    const asideTag = document.querySelector("aside");
    asideTag.addEventListener("click", function(evt){
        evt.target.classList.toggle("active");
    });
}