// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract StringAndBytes {
    string a;

    function setString(string memory _a) public {
        a = _a;
    }

    function getString() public view returns(string memory) {
        return a;
    }

    function stringToBytes() public view returns(bytes memory){
        return bytes(a);
    }

    function stringToBytes2() public view returns(bytes1, bytes1, bytes1) {
        return (bytes(a)[0], bytes(a)[1], bytes(a)[2]);
    }

    function bytesToString(bytes memory _a) public pure returns(string memory) {
        return string(_a);
    }

    function bytesToString2(string memory _a) public pure returns(bytes1) {
        bytes memory _b; // bytes형 변수 _b 선언 
        _b = bytes(_a); // _b에 _a의 bytes 형변환 정보 대입
        return _b[0];
    }

    function bytesToString3(string memory _a) public pure returns(string memory) {
        bytes memory _b = new bytes(1);
        _b[0] = bytes(_a)[0];
        return string(_b);
    }

    function bytesToString4(string memory _a, uint _n) public pure returns(string memory) {
        bytes memory _b = new bytes(1); //2자리로 설정  -> 0x00 (2자리) / 동적이지만 초가값 설정 (동적)
        _b[0] = bytes(_a)[_n-1]; /*[나중에] 조건문 배운 후에 다시 돌아오기, 글자 수에 맞게*/
        //_b는 동적이나 첫번째 값에 넣어준거임 
        return string(_b);

        //동적으로 시작하면 끝싸지 동적 
        //정적으로 시작하면 끝까지 정적 
        //정적인 아이를 동적으로 바꾸는 것이 안됨 
    }
}