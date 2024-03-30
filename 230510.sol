// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Test{
    struct Student {
        string name;
        uint number;
        string[] classes;
    }

    Student[] students;
    mapping(string => Student) studentToTeacher;
    mapping(string => Student[]) studentsToTeacher;

    function setStudentsToTeacher(string memory _teacherName, string memory _name, uint _number, string[] memory _classes) public {
        studentsToTeacher[_teacherName].push(Student(_name, _number, _classes));
    }

    function getStudentsToTeacher(string memory _teacherName) public view returns (Student[] memory){
       return  studentsToTeacher[_teacherName];
    }


    function setFixedStuodent(string memory _teacherName, uint _n, uint _number) public {
        studentsToTeacher[_teacherName][_n-1].number = _number;
    }

    function setStudents(string memory _name, uint _number, string[] memory _classes) public {
        students.push(Student(_name, _number, _classes));
    }


    function getStudent(uint _n) public view returns(Student memory){
        return students[_n -1];
    } 


    function getStudentName(uint _n) public view returns(string memory){
        return students[_n -1].name;
    } 
}