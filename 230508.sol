// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract homework{
/*
실습 가이드
1. setTeacher_Student 해보기
2. getTeacher_Student 해보기
3. setTeacher_Class -> 같은 선생이름으로 여러명 학생 해보기
4. getTeacher_Class -> 3번에서 설정한 선생이름으로 해보기 -> 3번에서 등록한 학생 모두 나오는지 확인
*/
struct Student{
    string name;
    uint number;
    uint[] score;
    string[] subject;
}

mapping(string => Student) teacherToStudent;
mapping(string => Student[]) teacherToAllStudent;

function setStudent(string memory _teacherName, string memory _name, uint _number, uint[] memory _score, string[] memory _subject) public {
    teacherToStudent[_teacherName] = Student(_name, _number, _score, _subject);
}

function setStudents(string memory _teacherName, string memory _name, uint _number, uint[] memory _score, string[] memory _subject) public {
    teacherToAllStudent[_teacherName].push(Student(_name, _number, _score, _subject));
}
function getStudent(string memory _teacherName) public view returns(Student memory){
    return teacherToStudent[_teacherName];
}
function getStudents(string memory _teacherName) public view returns(Student[] memory){
    return teacherToAllStudent[_teacherName];
}

uint[4] uintArray;
uint count;

function setUintArray(uint _n) public {
    uintArray[count++] = _n;
}

// contract의 address
address addressA;
// msg.sender의 address 
function getUserAddress() public view returns(address){
    return address(this);
} //왜 view?

function getContactAddress() public view returns(address){
    return address(msg.sender);
}

function getMyBalance() public view returns(uint){
    return address(msg.sender).balance; //3차이
} 

function setBytes() public view returns(bytes20){
    return bytes20(addressA);
}
function setBytesN(bytes20 _n) public {
     addressA = address(_n);
}
}