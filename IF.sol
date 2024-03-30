// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract If{

    function setGrade(uint _score) public pure returns(string memory){
        
        if(_score >= 50){
            return "P";
        }else {
            return "F";
        }
    }

//점수가 70 점 이상 이면 A , 50점 이상이면 B, 아니면 c
    function setGrade2(uint _score) public pure returns(string memory){
        if(_score >= 70){
            return "A";
        }else if(_score >= 50){
            return "B";
        }else{
            return "c";
        }
    } 

    uint[] even;
    uint[] odd;
    function evenOrOdd(uint _n) public {
        if(_n%2 == 0){
            even.push(_n);
        }else{
            odd.push(_n);
        }  
    }

    function getEvenOdd() public view returns(uint[] memory, uint[] memory){
        return(odd, even); 
    }
// 3으로 나누었을 때, 나머지가 1이면 A, 2이면 B, 0이면 C
// 터너리
uint[] A;
uint[] B;
uint[] C;
//2로 나누었을 때 0,1 
//n으로 나누었을 때 나머지는 0~n-1
// ==로 함 
// 사전 차단 형식으로 리콰이얼로 간다 
     function ABC(uint _n) public {
        if(_n%3 == 1){
            A.push(_n);
        }else if (_n%3 == 2){
            B.push(_n);
        } else {
            C.push(_n);
        } 
    }

    struct Student{
        uint number;
        string name;
        // mapping (string => uint) score;
        uint score;
        string credit;

    }
    Student Alice;
    Student Bob;
    Student Charlie;
    Student[] students;

    function setAlice(uint _number, string memory _name, uint _score) public {
      string memory _credit;
      if(_score>=90) {
         _credit = 'A';
      } else if(_score >=80) {
         _credit = 'B';
      } else if(_score >=70) {
         _credit = 'C';
      } else {
         _credit = 'F';
      }

      Alice = Student(_number, _name, _score, _credit);
   }

   function setBob(uint _number, string memory _name, uint _score) public {
      string memory _credit;
      if(_score>=90) {
         _credit = 'A';
      } else if(_score >=80) {
         _credit = 'B';
      } else if(_score >=70) {
         _credit = 'C';
      } else {
         _credit = 'F';
      }

      Bob = Student(_number, _name, _score, _credit);
   }

   function setCharlie(uint _number, string memory _name, uint _score) public {
      string memory _credit;
      if(_score>=90) {
         _credit = 'A';
      } else if(_score >=80) {
         _credit = 'B';
      } else if(_score >=70) {
         _credit = 'C';
      } else {
         _credit = 'F';
      }

      Charlie = Student(_number, _name, _score, _credit);
   }

   function getStudent() public view returns(Student memory, Student memory, Student memory) {
      return (Alice, Bob, Charlie);
   }

   function pushStudent(uint _number, string memory _name, uint _score) public {
    string memory _credit;
      if(_score>=90) {
         _credit = 'A';
      } else if(_score >=80) {
         _credit = 'B';
      } else if(_score >=70) {
         _credit = 'C';
      } else {
         _credit = 'F';
      }

    students.push(Student(_number, _name, _score, setCredit(_score)));
   }

   function getStudents() public view returns(Student[] memory){
       return students;
   } 

   function setCredit(uint _score) public pure returns(string memory){
    if(_score>=90) {
        return 'A';
      } else if(_score >=80) {
        return 'B';
      } else if(_score >=70) {
        return'C';
      } else {
        return 'F';
      }
   } 


}


contract If2 {

    function setNumber(uint _n) public pure returns(string memory){
        if( _n >= 70 || 10 >= _n ){
            return "A";
        }else if(_n >= 50 &&  _n %3 == 0){
            return "B";
        }else {
            return "C";
        }
    } 

    function setNumber2(uint _n) public pure returns(string memory){
        if( _n >= 70 || 20 >= _n ){
            return "A";
        }else if(_n >= 50 &&  _n %5 == 0){
            return "B";
        }else {
            return "C";
        }
    } 



}

contract ENUM{
    //펀딩같은 것 상태가 계속 변화하는 것 트레킹 
    enum Food {
        Chicken,
        Suish,
        Bread,
        Coconut
    }
    // uint8 형 변환 가능 
    Food a;
    Food b;
    Food c;
    Food d;

    function setA() public {
        a = Food.Chicken;
    }

    function setB() public {
        b = Food.Suish;
    }

    function setC() public {
        c = Food.Bread;
    }


    function setD() public {
        d = Food.Coconut;
    }

    function getABCD() public view returns(Food, Food, Food){
        return(a,b,c); 
    } 
    function getABCD2() public view returns(uint8, uint8, uint8){
        return(uint8(a),uint8(b),uint8(c)); 
    } 

}

contract Enum2{
    enum color{
        red,
        yellow,
        green
    }

    color a;
    color b; 
    color c; 

    function setC() public {
        c = color.red;
    }

    function setC2(uint _n) public {
        c = color(_n);
    }

     function getC() public view returns(color){
        return c;
    } 


}

contract Enum3{
    enum Status{
       neutral,
       high,
       low 
    }
    Status st;
    uint a=5;

    function higher() public {
        a++;
    }

    function lower() public {
        a--;
    }

  //Enum 용량도 작고 가독성 

   function setA() public {
       if(a >= 7) {
            st = Status.high;
        } else if(a<= 3) {
            st = Status.low;
        } else {
            st = Status.neutral;
        }
    }
}