// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A {
  
  uint public a ;

  function setA(uint _a) public {
    a = _a;
  }

  function mul (uint _a, uint _b, uint _c) public pure returns(uint) {
    return _a*_b*_c;
  }
}
