// function setCateOptions() {

//     $.ajax({
//         url : "http://127.0.0.1:8888/board/cate" ,
//         method : "GET" ,
//         success : function(cateVoList){
//             const cateSelect = document.querySelector("#cate-select");
//             for(const vo of cateVoList){
//                 const optionTag = document.createElement("option");
//                 optionTag.setAttribute("value" , vo.no);
//                 optionTag.innerText = vo.name;
//                 cateSelect.appendChild(optionTag);
//             }
//         },
//         fail : function(){
//             console.log("통신실패..");
//         } 
//     })

//     // for(let i=0; i<10; i++) {
//     //     const optionTag = document.createElement("option");
//     //     optionTag.setAttribute("value", 1);
//     //     optionTag.innerText = "자유";
//     //     selectTag.appendChild(optionTag);
//     // }
// }

// window.onload = function() {
//     setCateOptions();
// }

const fileTag = document.querySelector("input[name=f]");
fileTag.addEventListener("change", preview);

function preview(evt) {
    // console.log(evt);
    // console.log(evt.target);
    // console.log(evt.target.files);
    // console.log(evt.target.files[0]);
    // console.log(evt.target.files[1]);
    // console.log(evt.target.files[2]);

    const previewArea = document.querySelector(".preview-area");
    previewArea.innerHTML = "";

    for(let i=0; i<evt.target.files.length; i++){

        const f = evt.target.files[i];
        const fr = new FileReader();

        fr.onload = function(evt){

            // console.log("파일 다 읽었음");
            // console.log(evt);
            // console.log(evt.target.result);

            const dataUrl = evt.target.result;
            const imgTag = document.createElement("img");

            imgTag.setAttribute("src", dataUrl); // 파일객체의 url 경로로 채워주면 됨
            imgTag.setAttribute("width", "100");
            imgTag.setAttribute("height", "100");

            previewArea.appendChild(imgTag);
        };

        fr.readAsDataURL(f);
    }

}