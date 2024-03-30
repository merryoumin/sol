// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Note {
    function forLoop() public pure returns(uint){
        uint a;

        for(uint i =1; 1<6; i++){
            a = a+i;
        }
        return a;
    } 


    function forLoop2() public pure returns(uint, uint){
        uint a;
        uint i;

        for(i=1; i<6; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i;
        }

        return (a,i);
    }

    function forLoop3() public pure returns(uint, uint){
        uint a;
        uint i;

        for(i=1; i<=5; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i;
            //a += i;
            // <= 는 i = n+1까지
            // < 는 i =  n까지  
      
        //     a : i(먼저 늘어남) 
        //     0 : 0
        //     1 : 1
        //     3 : 2
        //     6 : 3
        //    10 : 4
        //    15 : 5
        //       : 6

        }

        return (a,i);
    }
}

contract fixedArray{
    uint[] a; 
    uint[4] b; //push, pop 못씀 -> 길이를 변화 시킴 but 길이 고정 되어 있음

    function getAlength() public view returns (uint){
        return a.length;
    }

    function pushA(uint _n) public {
        a.push(_n);
    }

    function getA() public view returns (uint[] memory){
        return a;
    }

    function getBlength() public view returns (uint){
        return b.length;
    }

    function getB() public view returns (uint[4] memory){
        return b;
    }

    function pushB(uint _n, uint n) public {
        b[n-1] = _n;
    }

    uint count;
    function pushB2(uint _n) public returns (uint) {
        b[count++] = _n; 
        //_n의 값이 들어간다음에 count++ 됨 / 0번자리 !!
        // uint256[4]: 1,0,0,0
        return count;
    }

    //이거 아님 
    function pushB3(uint _n) public returns (uint) {
        b[++count] = _n; 
        //++count 된다음에 값이 들어감 그래서 1번자리에 들어감 
        // uint256[4]: 0,1,0,0
        return count;
    }

    function getCount() public view returns(uint) {
        return count;
    }


    uint[4] f;
    uint count2;
    function setF(uint _n) public {
        f[count2++] = _n;
    }

    function getF() public view returns (uint[4] memory){
        return f;
    } 

    function forloopF() public  view returns(uint){
        uint add;
        for(uint i=0; i <4; i++){
            add=add+f[i];
        } 
        return add;
    }

    function forloopLength() public view returns(uint){
        uint add;
        for(uint i=0; i < f.length; i++){
            add=add+f[i];
        } 
        return add;
    } 

    uint[] d;
    
    function pushd(uint _n) public {
        d.push(_n);
    }

    function getD() public view returns(uint[] memory) {
        return d;
    }

    function forLoop6() public view returns(uint) {
        uint a;
        for(uint i=0;i<d.length;i++) {
            a=a+d[i];
        }

        return a;
    }
}