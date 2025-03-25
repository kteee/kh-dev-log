function home() {
    location.href="./home.jsp";
}

function search() {
    const word = document.querySelector("#searchbox").value;
    if(word.length < 1) {
        alert("검색어를 입력해주세요.");
    }
}

function mypage(){
    alert("로그인 먼저 진행해주세요.");
}

function selectlocation() {
    const location = document.querySelector("#location");
    const theme = document.querySelector("#theme");
    const locationdisplay = document.querySelector("#location-list");
    const themedisplay = document.querySelector("#theme-list");
    location.className = "selected";
    theme.className = "non-selected";
    locationdisplay.className = "show-area";
    themedisplay.className = "hidden-area";
}

function selecttheme() {
    const location = document.querySelector("#location");
    const theme = document.querySelector("#theme");
    const locationdisplay = document.querySelector("#location-list");
    const themedisplay = document.querySelector("#theme-list");
    location.className = "non-selected";
    theme.className = "selected";
    locationdisplay.className = "hidden-area";
    themedisplay.className = "show-area";
}

function viewmore() {
    const hiddenlist = document.querySelector(".restaurant-list-area.hidden-list");
    hiddenlist.className = "restaurant-list-area show-list";
}