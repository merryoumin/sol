// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;



contract String {
    uint a;
    string b; 
    
    function setA(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint){
        return a;
    }

    function setB(string memory _b) public  {
        b = _b;
    }

//스트링은 정확히 어디에 있는지 알려줘
//스토리지(상태변수), 메모리, 콜데이터
//지역변수 스트링 일 시 : 메모리랑 콜데이터 중 어디 저장하고 어떻게 불려올지 명확하게 
//스트링은 일종의 어레이 
//TypeError: Data location can only be specified for array, struct or mapping types, but "memory" was given.
    function getB() public view returns (string memory){
        return b;
    }
//b를 abc로 만드는 함수를 구현하세요
    function setBasAbc() public {
        b = "abc";
    }
    function setBasAbcBig() public {
        b = "ABC";
    }

    //아스키 코드(문자)-> 대문자 소문자 다르게 저장   16진수 63,43  저장 
    function setAB(uint _a,string memory _b) public {
       a = _a;
       b = _b;
    }
    function getAB() public view returns (uint, string memory){
        return (a,b);
    }

//스트링은 무거워
//call 휘발성  -> call 
//메모리 call을 복사해서 사용
//array , 특수 경우 string, bytes

//메모리 call을 복사해서 사용

    
}