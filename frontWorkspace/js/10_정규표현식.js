// 정규표현식 객체 만들기
// const x = new RegExp("hello");  
// const str = "hi";
const str = /A-Za-z가-힣]/g;
//const str = "Helloworld"; 
const result1 = x.test(str);
console.log(result1);

// 정규표현식 가지고 문자열 검사하기2 (일치하는 단어 반환)
const result2 = x.exec(str); 
console.log(result2);

// text, exec 메서드 정규식 객체 안에 있음
// match, replace, search, split 메서드 문자열 객체 안에 있음

const result3 = str.match(x); // exec와 똑같이 나옴
console.log(result3);

const result4 = str.replace(x, "#");
console.log(result4);

    /*
        RegExp 객체에서 제공하는 메소드
            객체.test(문자열) : 문자열에 정규식 패턴을 만족하는 값이 있으면 true, 없으면 false를 리턴한다.
            객체.exec(문자열) : 문자열에 정규식 패턴을 만족하는 값이 있으면 처음 매치된 문자열 리턴한다.
        
        String 객체에서 정규 표현식 객체를 이용하는 메소드
            문자열.match(정규식) : 문자열에서 정규식 패턴의 값과 일치하는 값을 리턴한다.
            문자열.replace(정규식, 바꿀값) : 문자열에서 정규식 패턴의 값과 일치하는 부분을 바꿀값으로 변경한다.
            문자열.search(정규식) : 문자열에서 정규식 패턴의 값과 일치하지 부분의 시작 인덱스를 리턴한다.
            문자열.split(정규식) : 문자열에서 정규식 패턴의 값과 일치하는 값을 구분자로 하여 배열을 생성하여 리턴한다.
    */

    /*
        반복 검색
        {m,n}은 앞선 패턴이 최소 m번 최대 n번 반복되는 문자열을 의미한다.
        +는 앞선 패턴이 최소 한 번 이상 반복되는 문자열을 의미한다. (+ = {1, })
        ?는 앞선 패턴이 최대 한 번 이상 반복되는 문자열을 의미한다. (? = {0,1})
    */
    
    /*
        문자열의 앞, 뒤 구분
        ^는 문자열의 시작을 의미한다.
        $는 문자열의 마지막을 의미한다.
    */

    /*
        OR 검색
        [...] 내의 문자들 중 하나라도 존재할 경우를 의미한다.
    */  

    // [...] 내의 -는 범위 지정을 의미한다.
    // [...] 내의 ^는 not의 의미를 가진다.
    
    /* 
        임의의 문자열 검색
        .은 임의의 문자 한 개를 의미하고, 문자 내용은 무엇이든 상관없다.
    */