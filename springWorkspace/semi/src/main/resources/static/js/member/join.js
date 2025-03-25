function checkDupId() {

    // 제출 버튼 가져오기
    const submitBtn = document.querySelector("form input[type=submit]");

    // 유저가 입력한 아이디 준비
    const id = document.querySelector("input[name=id]").value;

    // 서버한테 아이디 넘기기 (ajax)
    $.ajax({
        url : "/member/dup-id" ,
        method : "POST" ,
        data : {
            id : id
            // 키값은 "id", value 값은 위에서 선언한 변수 id
            // 그냥 id 라고만 써도 됨
        } ,
        success : function(x) {  // 서버가 응답해준 결과가 함수의 파라미터로 저장됨
            // x에서 결과 (status, data) 뽑아내기
            // 그런데 현재 전달받은 x 는 그냥 String
            // 문자열을 객체로 만들기 => JSON.parse(문자열)
            const o = JSON.parse(x)
            console.log("통신성공~~");
            console.log(o);
            // 객체 o 에서 status, data 뽑아내기
            if(o.status === "good") {
                alert(`${o.data}는 사용이 가능합니다.`);
                submitBtn.removeAttribute("disabled");
            }
            else {
                alert(`${o.data}는 사용 불가능합니다.`);
                submitBtn.setAttribute("disabled", 'true');
            }
        } ,
        fail : function() {
            console.log("통신실패...");
            console.log(x);
        } ,
    });

    // 결과 받아서 form 태그 submit 가능여부 결정 (제출버튼 disabled 처리)
}

function disalbeSubmitBtn() {
    
    // 제출 버튼 가져오기
    const submitBtn = document.querySelector("form input[type=submit]");
    // disabled 처리
    submitBtn.setAttribute("disabled", 'true');

}