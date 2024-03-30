// SPDX-License-Identifier: GPL-3.0
// 없으면 경고 먹음 / 라이센스

pragma solidity ^0.8.18;
//컴파일 버전 : 컴파일과 맞지 않거나 낮으면 안됨 실행안됨 / 왠만하면 18,18 고고

contract StoreandReturn { 

    uint a; //숫자형 변수 a
    uint b; //숫자형 변수 b
    uint c=2; // 숫자형 변수 c, 값은 2
    uint add;
 
    // 상태 변수 
    // 수정하려면 돈든다
    // view에 지역변수 선언하고 담아서 수정가능 -> view는 돈 안듬
    // 돈들면 주황색이랑 콘솔에 녹색 스티커 


    // 함수이고, 이름은 getA, input값은 없음, public 하고 view 함, output 값은 1개 있음, uint 형임임
    function getA() public view returns(uint) {
        //지역변수 변경 가능 view 
        return a;
    }

    function setA(uint _a) public{
        a = _a;
    }
    function setAasFive() public {
        a = 5;
    }


   function setBasSeven() public {
        b=7;
    }


    function getB() public view returns (uint){
        return b;
    }

    function getAB() public view returns (uint,uint){
        return (a,b);
    }

    function getABC() public view returns (uint,uint,uint){
        return (a,b,c);
    }

    // 함수, 이름은 getAB, input 없음, public하고 view 함, output 값은 2개, 둘 다 uint형
    function addAB(uint _aa ,uint _bb) public returns (uint){
        add = _aa + _bb;
        return add;
    }

    // view : 상태변수 참고가능 값 변경 불가능 -> 가스 안씀
    // pure : 상태변수 변경 및 참조도 불가  -> 가스 안씀
    // view, pure 없으면 가스비 나옴 

    //view와 pure 함수는 state variable(상태변수)의 값을 변화시키지는 않음 -> gas비 안씀
    
    // 숫자 _aa와 _bb를 받아서 이 2개의 숫자를 더한 결과값을 반환하는 함수 Add를 구현하세요
    function Add(uint _aa, uint _bb) public pure/*상태변수는 하나도 필요없을 때 pure*/ returns(uint) {
        return _aa+_bb;
    }

    // 숫자 a와 b를 갖고와서 이 2개의 숫자를 더한 결과값을 반환하는 함수 Add2를 구현하세요
    function Add2() public view/*상태변수를 갖고오기 때문에 view로로*/ returns(uint) {
        return a+b;
    }
}


