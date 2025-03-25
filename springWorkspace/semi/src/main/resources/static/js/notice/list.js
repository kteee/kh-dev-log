const tbodyTag = document.querySelector("main .table-area tbody");

tbodyTag.addEventListener("click", function(evt){
    // console.log("클릭이벤트 처리하는 함수 실행됨~");
    // console.log(evt);

    if(evt.target.tagName != "TD"){
        return;
    }

    const no = evt.target.parentNode.children[0].innerText;
    console.log(no);
    location.href=`/notice/detail?no=${no}`;
});

function handelCheckbox(x){
    
    // 모든 체크박스 가져오기
    const checkBoxArr = document.querySelectorAll(".checkbox-td > input[type=checkbox]");

    // if(x.checked) {
    //     // 모든 체크박스 체크
    //     for(let i=0; i<checkBoxArr.length; i++) {
    //         checkBoxArr[i].checked = true;
    //     }
    // }    
    // else {
    //     // 모든 체크박스 체크해제
    //     for(let i=0; i<checkBoxArr.length; i++) {
    //         checkBoxArr[i].checked = false;
    //     }
    // }

    for(let i=0; i<checkBoxArr.length; i++) {
        checkBoxArr[i].checked = x.checked;
    }
}

function deleteNotice() {
    
    // 서버한테 요청 보내기 (게시글 번호 전달 -> 삭제)

    // 1. 게시글 번호들 가져오기

    // const checkedNoArr = document.querySelectorAll(".checkbox-td > input[type=checkbox]");
    
    // for(let i=0; i<checkedNoArr.length; i++) {
    //     if(checkedNoArr[i].checked) {
    //         const tdTag = checkedNoArr[i].parentNode;
    //         const trTag = tdTag.parentNode;
    //         const noTag = trTag.firstElementChild;
    //         console.log(noTag.innerText);
    //     }
    // }

    const checkBoxArr = document.querySelectorAll(".checkbox-td > input[type=checkbox]")
    const noticeNoArr = [];
    for(const checkBox of checkBoxArr) {
        if(checkBox.checked == false) {
            continue;
        }
            const noticeNo = checkBox.parentNode.parentNode.children[0].innerText;
            noticeNoArr.push(noticeNo);
    }

    // 2. ajax 요청 보내기
    // 브라우저로 요청보내기 : a, url, form, lo,,?
    // 자바 스크립트 함수 가지고 요청 보내기 : fecth,, new XML~~ ,,
    $.ajax({
        url: "/notice/delete",
        method: "delete" ,
        data: {
            noticeNoArr : JSON.stringify(noticeNoArr)
        } ,
        success: function(x){
            
            console.log("통신성공!");
            
            if(x == "good") {
                alert("삭제성공!");                
            }
            else {
                alert("삭제실패..");
            }
            
            // 새로고침
            location.reload();

        }  ,
        error: function(x){
            console.log("통신실패...");
        } 
    });
}