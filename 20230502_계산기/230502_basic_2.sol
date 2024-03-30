// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Basic2 {

/*
계산기를 만드세요
2개의 input 값을 받아 더한 값을 반환하는 함수 Add, 곱한 값을 반환하는 함수 Mul, 뺀 값을 반환하는 Sub 그리고 몫과 나머지를 반환하는 함수 Div를 구현하세요
*/


    // 상태변수 수정도 없고, 읽는것도 없어서 pure
    function Add(uint _a, uint _b) public pure returns(uint){
        return _a+_b;
    }
    function Mul(uint _a, uint _b) public pure returns(uint) {
        return _a*_b;
    }
    function Sub(uint _a, uint _b) public pure returns (uint){
        return _a -_b;
    }
    function Div(uint _a, uint _b) public pure returns (uint,uint){
        return (_a / _b, _a%_b); //몫과 나머지 (/는 몫만 나옴 + % 나머지값)
		//소수점 없음 / 10의 18승 단위변환 -> 불완전한것을 극도로 싫어함 
    }

}