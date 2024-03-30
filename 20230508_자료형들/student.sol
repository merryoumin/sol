
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Struct {
    struct Student{
        string name;
        uint birthday;
        uint number;
    }

    Student[] students;

    function pushStudents(string memory _name, uint _birthday, uint _number) public {
        students.push(Student(_name, _birthday, _number));
    }

    function setStudent(uint _n) public  view returns (Student memory){
        return students[_n-1];
    }

    function getBirthday(uint _n) public view returns (uint){
        return students[_n-1].birthday; //array이름[n번째].요소이름
    }

    //이더리움은 키벨류로 되어 있음 utxo아님 
    //array 전체 포문 돌릴 때 -> 평균 같은 것 / 순차적
    //mapping 포문 돌리기 어렵다. / 검색에 편함 
}

contract Address { //address의 this 
//Address 20 바이트 16진수 40글자 
    address a; //바이트 0x하고 0이 40개 
    function getAddress() public view returns(address){ //크기가 정적 
        return address(this); //컨트렉트 어드레스 

        // 모든 스마트 컨트렉트 한테 주소가 있다. 지값주소
        // EOA 컨트렉트 / CA 어카운트 
    }

    function getContractBalance() public view returns(uint){
        return address(this).balance; // 컨트렉트 잔액 보는 것 
    }


    function getMyAddress() public view returns(address){
        return address(msg.sender); // 내 지갑 주소 
        //누가 이 함수를 건드렸나? 이거임 from에 들어감 
    }

    function getMyBalance() public view returns(uint){
        return address(msg.sender).balance; //내 지갑 잔액 보는 것 
    }
    //길이만 같고 자료형은 다름 

    // function setA2(bytes 20) public returns (address){
    //     a = _a;
    // }

    function getA2() public view returns(bytes20){
       return bytes20(a); 
    }
    function setA3(bytes20 _a) public {
        a = address(_a);
    }

    // function getA() public view returns(bytes 20){
    //    return a; 
    // }

    function setAfaddress(address _a) public {
        a = _a;
    }

    function getA() public view returns(address){
       return a; 
    }

    //내가 스마트 컨트렉트에 무슨 일을 시키면 from 내 지갑주소 To는 스마트 컨트렉트 주소 

    uint b;

    function changeB() public {
        b = b+5;
    }

    function add(uint _a, uint _b) public pure returns(uint) {
        return _a+_b;
    }

}



contract Mapping {
    mapping (uint => uint) a;  //숫자로 숫자 
    mapping (uint => string) b; //숫자로 스트링
    mapping (string => address) c; // 스트링으로 어드레스 

    mapping(uint => mapping(string => uint)) score; //이중 매핑 
    //3반의 마이클의 점수 


    //여러가지 방면에서 사용되면 이중 배열 -> 좌표, 바둑판
    //키 180인 사람은 포문 유리, 어레이가 좋음


    //이름 검색 키 추출 
    mapping (string => uint) height;

    //정보 넣기 
    function setHight(string memory _name, uint _h ) public {
        height[_name] = _h;// mapping이름[key 값] = value 값
    }

    //정보 받기 
    function getHight(string memory _name) public view returns(uint){
        return height[_name]; // mapping이름[key 값]
    } //소문자 대문자 구분함 
    //해시테이블  
    //없는 애는 0을 줌 -> 키값(해시함수로 저장됨) / 없으면 초기값, 0으로 줌 
    //머클 페트리샤, 트라이 

    function deleteHeight(string memory _name) public {
        delete height[_name]; //초기값으로 돌려 보냄 / uint => 0;  string => "";
    }


}