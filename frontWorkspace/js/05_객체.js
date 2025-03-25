// 자바에서 객체의 데이터와 메서드를 '멤버'라 했음
// 자바스크립트에서는 데이터와 메서드를 '프로퍼티(속성)' 이라고 함

// const x = {};
// x.a="안녕";
// x.b=123;
// x.c=function(){};

// const x = {};
// x["a"] = "안녕";
// x['b'] = 123;
// x[`c`] = function(){};

// 위 두개 다 가능 

// const x = {
//     "a" : "안녕",
//     'b' : 123, 
//     c : function(){}  // 쉼표 뒤에 있어서 c는 문자열로 인식됨
// };

// console.log(x);


function f01(){
    const product = {
        name : "galaxy24",
        price : 3000,
        // ["camere-cnt"] : 3
    };
    // product.name = "galaxy24";
    // product.price = 3000;
    // product["name"] = "galaxy24";
    // product["price"] = 3000;

    product["color"] = "black";
    product["camera-cnt"] = 3;  
    // 특수문자는 " " 으로 하여 문자열로 인식시켜야 함 -> 대괄호로 선언

    product.info = () => {
        console.log("==== info ====")
        // console.log(name);
        console.log(this); // 화살표 함수를 쓰면 this의 바인딩이 이상하게 됨 
        // this는 웬만하면 쓰지 말 것, 화살표 함수도 ,, 
        console.log(this.name);
        console.log(this.price);
        console.log(this.color);
        // console.log(this["camere-cnt"])
    };

    console.log(product);
    console.log(product.name);
    console.log(product.price);
    console.log(product.info);
    product.info();
    product.name;
}

// f01();


const person1 = {};
person1.nick = "kim";
person1.hello = function() {
    console.log("hello, " + this.nick);
}

const person2 = {};
person2.nick = "choi";
person2.hello = person1.hello;
// hello, choi 로 출력됨

// person1.hello();
// person2.hello();

function f02() {
    const game = {
        title : "스타크래프트", 
        price : 2000,
        service : true,
        os : ["win10","win11"]
    };

    // 향상된 for문처럼 in으로 game의 프로퍼티를 하나씩 꺼내옴
    for(const k in game) {
        console.log(game[k]);
    };
}

// f02();

function f03(){
    const student = {};
    student["name"] = "홍길동";
    student.age = 20;

    delete(student.age);

    console.log(student);
}

// f03();

function f04() {
    
    // 생성자 함수
    function Student(a,b) {
        this.name = a;
        this.score = b;
    }

    //const s1 = new Student("홍길동", 100); 
    //const s2 = new Student("김철수", 80); 
    //console.log(s1);

    // function createStudent(a,b) {
    //     const obj = {};
    //     obj.name = a;
    //     obj.score = b;
    //     return obj;
    // }
    // 이렇게 하면 불편하니까 생성자 함수 쓰는 것임

    // const s1 = createStudent("홍길동", 100);
    // console.log(s1);
    
    
    console.log(Student.prototype);

    Student.prototype.hello = function() {
        console.log(`안녕 나는 ${this.name}, 성적은 ${this.score}점 이야`);
    }

    const s1 = new Student("홍길동", 100); 
    const s2 = new Student("김철수", 80); 
    console.log(s1);
    console.log(s2);
    s1.hello();
    s2.hello();

    Student.prototype
    s1.__proto__
    s2.__proto__

    Student.prototype.java = "good";

    // 아래 세개가 똑같은거 가르키고 있음
    console.log(Student.prototype);
    console.log(s1.__proto__);
    console.log(s2.__proto__);

    s1.__proto__.constructor // 생성된 객체 안에는 constructor 속성이 있다
    console.log(s1.__proto__.constructor);
    console.log(Student.prototype.constructor);
    console.log(Student);
}

f04();