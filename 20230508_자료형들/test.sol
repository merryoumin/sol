
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Struct {

// 이름, 번호, 생년월일을 담은 student라는 구조체와 제목, 번호, 날짜를 담은 class라는 구조체를 선언하시오.
struct Student {
    string name;
    uint num;
    uint birth;
}

struct Class{
    string title;
    uint num;
    uint date;
}

// student형 변수 s 와 class형 변수 c를 선언하시오.
Student S;
Class C; 

// student형 변수들이 들어가는 array students와 class형 변수들이 들어가는 array classes를 선언하시오.
Student[] students;
Class[] classes;
// s에 값을 부여하는 함수 setS와 c에 값을 부여하는 함수 setC를 각각 구현하시오
function setS(string memory _name, uint _num, uint _birth) public {
    S = Student(_name, _num, _birth);
} 

function setC(string memory _title, uint _num , uint _date)public {
    C = Class(_title, _num, _date);
}
// 변수 s의 값을 반환받는 함수 getS와 c의 값을 반환받는 함수 getC를 각각 구현하시오.
function getS() public view returns (Student memory){
 return S;
}

function getC() public view returns (Class memory){
    return C;
}

// students에 student 구조체를 넣는 pushStudent 함수를 구현하세요.
function pushStudent(string memory _name, uint _num, uint _birth) public {
    students.push(Student(_name,_num, _birth ));
}

// classes에 class 구조체를 넣는 pushClass 함수를 구현하세요.

function pushClass(string memory _title, uint _num, uint _date) public {
    classes.push(Class(_title, _num, _date ));
}

//숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요.
struct D{
    uint a;
    string b; 
    bytes2 c;
}

// D형 변수 dd를 선언하세요.
D dd;

// dd에 값을 부여하는 setDD함수를 구현하세요.
function setDD(uint _a, string memory _b, bytes2 _c) public {
    dd = D(_a, _b, _c);
}

// dd의 값을 반환하는 getDD 함수를 구현하세요
function getDD() public view returns (D memory){
    return dd;
}

// D형 변수들이 들어가는 array Ds를 선언하세요.
D[] Ds; 

// Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
function pushD(uint _a, string memory _b, bytes2 _c) public {
    Ds.push(D(_a, _b, _c)); //dd = D(_a, _b, _c); 와 같음 
}

function pushD2() public {
    Ds.push(dd);
}

// Ds array의 n번째 요소를 반환받는 getN이라는 함수를 구현하세요.
function getN(uint n) public view returns (D memory){
    return Ds[n-1]; //동적에서 정적으로 가는 것은 괜찮음 
}


// 숫자형 변수 number, 문자형 변수 name, bytes2형 변수 password 그리고 memeber라는 구조체를 선언하세요.
struct member{
    uint number;
    string name;
    bytes2 password;
}

// member형 변수 Michael을 선언하세요.
member Michael;


// Michael에 값을 부여하는 setM 함수를 구현하세요.
function setM(string memory _name, uint _number, bytes2 _password) public {
    Michael = member(_number,_name, _password);
}


// member형 변수들이 들어가는 members를 선언하세요.
member[] members;


// members에 새로운 member 변수를 넣는 pushMember 함수를 구현하세요
function pushMember(string memory _name, uint _number, bytes2 _password) public {
    members.push(member(_number,_name, _password));
}

}