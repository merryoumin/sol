// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Struct {
    struct Student {
        string name;
        string gender;
        uint number;
        uint birthday;
    } 
    /* 구조체 선언 
    struct 구조체명 {
        .../
        .../
        ...
    }
    */
    // Struct 서로 다른 자료형 들어감 -> 디비 구조 
    // Struct 변수를 새로 만든것 
    

    uint a = 5;
    struct Email {
         string name;
         string id; 
         uint createdDay;
         bytes T;
    }
    Email C; 
    Email[] email;

    struct Party{
        string title;
        uint date;
        string name;
    }

    Party P;
    Party[] parties;



    function setP(string memory _title, uint _date, string memory _name) public {
        P = Party(_title, _date, _name);
    }

    function pushParty(string memory _title, uint _date, string memory _name) public {
        parties.push(Party(_title, _date, _name));
    }

    function getP() public view returns (Party memory){
        return P;
    }

    function getArrayParties() public view returns (Party[] memory){
        return parties;
    }



    function setEmailC(string memory _name, string memory _id, uint _createdDay,bytes memory _T ) public {
        C = Email(_name, _id, _createdDay,_T);
    }
    function getEmailC() public view returns(Email memory) { //Email형으로 리턴해야됨
        return C;
    }

    function pushEmail(string memory _name, string memory _id, uint _createdDay,bytes memory _T ) public {
        email.push(Email(_name, _id, _createdDay,_T)); 
    }

    Student A; // Student형 변수 s
    Student[] students; //Student형 변수들의 array students

    Student W;

    function setStudentA(string memory _name, string memory _gender, uint _number, uint _birth) public {
        A = Student(_name, _gender, _number, _birth);  //Student A;에 담아주는 것 
    }

    function setStudentW(string memory _name, string memory _gender, uint _number, uint _birth) public {
        W = Student(_name, _gender, _number, _birth);
    }

    function pushStudents(string memory _name, string memory _gander, uint _number, uint _birth) public {
        students.push(Student(_name, _gander,_number,_birth));
    }

    function setAStudent(string memory _name, string memory _gender, uint _number, uint _birth) public {
        A = Student(_name, _gender, _number, _birth);
    }


    function getStudentA() public view returns(Student memory) {
        return A;
    }

    function pushStudent(string memory _name, string memory _gender, uint _number, uint _birth) public {
        students.push(Student(_name, _gender, _number, _birth)); // 배열명.push(구조체명(구조체 정보들))
    }

    function popStudent() public {
        students.pop();
    }

    function getLength() public view returns(uint) {
        return students.length;
    }

    function getStudent(uint _n) public view returns(Student memory) {
        return students[_n-1];
    }

    function getStudents() public view returns(Student[] memory) {
        return students;
    }
}

contract Errors {
    uint a;

    function add(uint _a, uint _b) public pure returns(uint) {
        return _a+_b;
    }

    /*
    function add(uint _a, uint _b) public returns(uint) {
        a = a + _a + _b;
        return a;
    }

    function add(uint _a, uint _b) public view returns(uint) {
        return a+_a+_b;
    }

    function add(uint _a, uint _c) public pure returns(uint) {
        return _a+_c;
    }

    function add(uint _a, uint _b) public pure returns(uint, uint) {
        return (_a+_a, _a+_b);
    }
    */

    function add(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a+_b+_c;
    }

    function add2() public pure returns(uint) {
        uint c = 5;
        uint d = 7;
        return c+d;
    }

}