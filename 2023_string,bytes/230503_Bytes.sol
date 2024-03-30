// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract BYTES {

function square(uint _a) public pure returns(uint){
    uint b = _a * _a; //a**2;
    return b;
}
function cubuc(uint _a)public pure returns(uint){
    uint b = _a**3;
    return b;
}

function power(uint _a, uint _b)public pure returns(uint){
    uint b = _a**_b;
    return b;
}

    bytes a;
    
    function setA(bytes memory _a) public {
        a = _a;
    }
        
    function getA() public view returns (bytes memory) {
        return a;
    }

    //16진수 형태는 0x <= bytes
    //string => 아무것도 안나옴
    //uint => 0 
  function getA3(string memory _a) public  {
      a = bytes(_a);
    }

        
    function setA2() public {
        a = "16";
        //0:bytes: 0x3136
    }


















    //2개의 Input값을 가지고 1개의 output값을 가지는 4개의 함수를 만드시오. 각각의 함수는 더하기, 빼기, 곱하기, 나누기(몫과 나머지 반환)를 실행합니다.
}