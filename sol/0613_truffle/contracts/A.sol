// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;



contract A {
  constructor(uint _a) {
    a =_a;
  }
  uint public a;

  function setA(uint _b) public {
    a = _b;
  }

}

contract B {

  uint public a;

  function setA(uint _b) public {
    a = _b;
  }

}