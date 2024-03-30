
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract homwWork {
//숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요.
  
struct D{
    uint a;
   string b;
   bytes2 c;
}  
   
//D형 변수 dd를 선언하세요.

D dd;

//dd에 값을 부여하는 setDD함수를 구현하세요.

function setDD(uint _a, string memory _b, bytes2 _c) public {
    dd = D(_a, _b, _c);
}

//D형 변수들이 들어가는 array Ds를 선언하세요.

D[] Ds;

//Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
function pushD(uint _a, string memory _b, bytes2 _c) public {
    Ds.push(D(_a, _b, _c));
}

function popD() public {
    Ds.pop();
}

function lengthD() public view returns (uint) {
    return Ds.length;
}

//배열전체 
function getDs() public view returns (D[] memory){
    return Ds;
} 



//숫자형 변수 number, 문자형 변수 name, bytes2형 변수 password 그리고 member라는 구조체를 선언하세요.
struct member{
    uint number;
    string name;
    bytes2 password;
}
//member형 변수 Michael을 선언하세요.

member Michael;

//Michael에 값을 부여하는 setM 함수를 구현하세요.

function setM(uint _number, string memory _name, bytes2 _password) public {
    Michael = member(_number, _name, _password);
}

function getM() public view returns (member memory){
    return Michael;
}

//member형 array 변수들이 들어가는 members를 선언하세요.

member[] members;

//members에 새로운 member 변수를 넣는 pushMember 함수를 구현하세요
function pushMember(uint _number, string memory _name, bytes2 _password) public {
    members.push(member(_number, _name, _password));
}
  //원하는 배열 순번의 데이터
function getMember(uint _n) public view returns (member memory){
    return members[_n-1];
}
    //배열 Pop
function popMember() public{
    members.pop();
}

    //길이 
function getLengthMember() public view returns(uint){
    return members.length;
}

    // 배열전체 
function getMembers() public view returns(member[] memory){
    return members;
}

    //원하는 배열삭제 
   function deleteMember(uint _n) public {
    delete members[_n -1];
} 


// 배열 특정 값 바꾸기
function setNMembers(uint _n ,uint _number, string memory _name, bytes2 _password ) public {
    members[_n-1] = member(_number, _name, _password);
}

}