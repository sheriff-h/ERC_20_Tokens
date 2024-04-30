// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract basics {
    // // variable types
    // string public myString = "My String";
    // bool public Booleab1 = true;
    // uint256 public myUnit = 1;
    // int256 public myInt = 1;
    // address public myAddress = 0x7Cf051F55262f0D0111Eb0aD98DC836B088C4147;
    // ------------
    // visibility
    //     string name1 = "Name 1";
    //     string private name2 = "Name 2";
    //     string internal name3 = "Name 3";
    //     string public name4 = "Name 4";
    //     int256 public count;
    //     function inc1() public {
    //         count = count + 1;
    //     }
    //     function inc2() public {
    //         inc1();
    //     }
    //     function inc3() private {
    //         count = count + 1;
    //     }
    //     function inc4() public {
    //         inc3();
    //     }
    //     function inc5() external {
    //         count = count + 1;
    //     }
    //     function inc6() internal {
    //         count = count + 1;
    //     }
    //    function inc7() internal {
    //         inc6();
    //     }
    // -------------
    // functions
    // string name = "example";
    // function setName(string memory _name) public {
    //     name = _name;
    // }
    // function getName() public view returns (string memory) {
    //     return name;
    // }
    // function resetName() public {
    //     name = "Example";
    // }
    // ---------------
    // modifier
    // string public tkName = "sheik token";
    // uint256 public balance;
    // function getTkName() public view returns (string memory) {
    //     return tkName;
    // }
    // function add(uint256 a, uint256 b) public pure returns (uint256) {
    //     return a + b;
    // }
    // function pay() public payable {
    //     balance = msg.value;
    // }
    //-----------------------
    // custom modifier
    // address public owner;
    // string public name = "";
    // constructor(){
    //     owner=msg.sender;
    // }
    // modifier onlyOwner() {
    //     require(msg.sender == owner, "caller must be owner");
    //     _;
    // }
    // function setName(string memory _name) public onlyOwner {
    //     name = _name;
    // }
    //-------
    // global variables
    // address public contractAddress;
    // address public payer;
    // address public origin;
    // uint public amount;
    // constructor(){
    //     contractAddress=address(this);
    // }
    // function pay() public payable{
    //     payer= msg.sender;
    //     origin= tx.origin;
    //     amount =msg.value;
    // }
    // function getBlockInfo() public view returns(uint,uint,uint){
    //     return(
    //     block.number,
    //     block.timestamp,
    //     block.chainid
    //     );
    // }
    //----------------
}
