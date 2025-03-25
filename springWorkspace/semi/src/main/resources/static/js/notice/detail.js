
// 댓글 작성하기 버튼 클릭 시 동작
function writeReply(refNo) {
    // 댓글 내용 가져오기
    const replyaContent = document.querySelector("#reply-write-area input[name=content]").value;


    // 비동기 통신하기
    $.ajax({
        url : "/notice/reply/write" ,
        method : "POST" ,
        data : {
            "content" : replyaContent ,
            refNo
        },
        success : function(result) {
            console.log("통신 성공!");
            if(result == 1) {
                alert("댓글이 작성되었습니다.");
                loadReply();
                replyaContent = "";
            }
            else {
                alert("댓글 작성 실패...");

            }
        } ,
        error : function() {
            console.log("통신 실패..");
        }
    });
}

// 댓글 불러오기 
function loadReply() {

    // 현재 공지사항 번호 얻기 
    const noticeNo = document.querySelector("#reply-list-area").getAttribute("noticeNo");

    // 비동기통신(ajax)을 이용해서 데이터 받아오기
    $.ajax({
        url : "/notice/reply/list" ,
        method : "GET" ,
        data : {
            noticeNo
        },
        success : function(voList){
            console.log("통신성공!");
            console.log("댓글리스트 : " , voList); 
            paintReplyaList(voList);
            // console.log("댓글리스트 : " + x); 이거하면 이상하게 나옴 , 로 구분하면 됨
        } ,
        error : function(){
            console.log("통신실패..");
        }
    });

}

// 댓글리스트 그리기
function paintReplyaList(voList) {

    const replyListArea = document.querySelector("#reply-list-area");

    replyListArea.innerHTML = "";

    for (const vo of voList) {

        const div01 = document.createElement("div");
        div01.innerText = vo.content;
    
        const div02 = document.createElement("div");
        div02.innerText = vo.nick;
    
        const div03 = document.createElement("div");
        div03.innerText = vo.createDate;
    
        replyListArea.appendChild(div01);
        replyListArea.appendChild(div02);
        replyListArea.appendChild(div03);
    }

}

loadReply();