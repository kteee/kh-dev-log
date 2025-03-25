function paintPageArea(pvo){
    const pageArea = document.querySelector(".page-area");
    pageArea.innerHTML = "";

    // 이전 버튼
    if(pvo.startPage != 1) {
        const aTag = document.createElement("a");
        aTag.setAttribute("href", `/board/list?pno=${pvo.startPage-1}`);
        aTag.innerText = "이전";
        pageArea.appendChild(aTag);
    }

    // 페이지 버튼
    for(let i=pvo.startPage; i<=pvo.endPage; i++){
        const aTag = document.createElement("a");
        aTag.setAttribute("href",   `/board/list?pno=${i}`);
        aTag.innerText = i;
        pageArea.appendChild(aTag);
    }

    // 다음 버튼
    if(pvo.endPage != pvo.maxPage){
        const aTag = document.createElement("a");
        aTag.setAttribute("href", `/board/list?pno=${pvo.endPage+1}`);
        aTag.innerText = "다음";
        pageArea.appendChild(aTag);
    }
}

function loadBoardList(searchType, searchValue){

    const tbodyTag = document.querySelector("main table>tbody");

    const url = new URL(location);
    let pno = url.searchParams.get("pno");

    if(pno == null) {
        pno = 1;
    }

    $.ajax({
        url : `http://127.0.0.1:8888/board/list/data?pno=${pno}` ,
        // "/board/list/data" 이렇게 써도 괜찮음
        // method 아무것도 안쓰면 기본이 GET 방식 (생략하겠음)

        data : {
            searchType , 
            searchValue
            // 키 이름과 밸류 이름이 같으면 
            // searchType ,
            // searchValue 이렇게 써도됨 
        } ,

        success : function(m){

            const boardVoList = m.a;
            const pvo = m.b;
            paintPageArea(pvo);

            console.log(boardVoList)

            tbodyTag.innerHTML = ""; // 로딩중 글자 지우기

            for(const vo of boardVoList) {

                // const vo of boardVoList
                // let i=0; i<boardVoList.length; i++

                const trTag = document.createElement("tr");
                tbodyTag.appendChild(trTag); 

                const tdTag1 = document.createElement("td");
                trTag.appendChild(tdTag1);

                const aTag = document.createElement("a");
                aTag.setAttribute("href", `http://127.0.0.1:8888/board/detail?bno=${vo.no}`);
                tdTag1.appendChild(aTag);
                aTag.innerText = vo.title;

                const tdTag2 = document.createElement("td");
                tdTag2.innerText = vo.categoryName;
                trTag.appendChild(tdTag2);

                const tdTag3 = document.createElement("td");
                tdTag3.innerText = vo.writerNick;
                trTag.appendChild(tdTag3);

                const tdTag4 = document.createElement("td");
                tdTag4.innerText = vo.hit;
                trTag.appendChild(tdTag4);

                const tdTag5 = document.createElement("td");
                tdTag5.innerText = vo.createDate;
                trTag.appendChild(tdTag5);
                
            }

        } , 
        fail : function(){
            alert("게시글 목록 조회 실패...")
        }
    })

}

loadBoardList();

function handleSearchType(x){
    // 요소 가져오기 (제목 검색)
    const titleTag = document.querySelector("input[name=searchValue]");

    // 요소 가져오기 (카테고리 검색)
    const categoryTag = document.querySelector("select[name=searchValue]");

    // searchType 값에 따라서 둘 중 하나를 사용 불가하게 만들기

    // 제목 검색일 때 
    if(x.value == "title") {
        categoryTag.setAttribute("disabled", true);
        titleTag.removeAttribute("disabled");
    } 
    else {
    // 카테고리 검색일 때
        titleTag.setAttribute("disabled", true);
        categoryTag.removeAttribute("disabled");
    }
}

function submitSearchForm(){

    const searchType = document.querySelector("select[name=searchType]").value;

    const titleTagValue = document.querySelector("input[name=searchValue]").value;
    const categoryTagValue = document.querySelector("select[name=searchValue]").value;

    let searchValue = "";

    if(searchType == "title") {
        searchValue = titleTagValue;
    } 
    else {
        searchValue = categoryTagValue;
    }

    loadBoardList(searchType, searchValue);

    return false; // 기본 이벤트 막기
    
}