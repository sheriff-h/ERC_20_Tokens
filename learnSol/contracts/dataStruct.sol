// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract dataStruct {
    // array
    // uint256[] public array1 = [1, 2, 3, 4];
    // uint256[] public array2;
    // uint256[10] public array3;
    //----------

    //mapping
    // mapping(uint256 => string) public nameMap;
    // mapping(address => mapping(uint256 => string)) public data;

    // function getMapName(uint256 _id) public view returns (string memory) {
    //     return nameMap[_id];
    // }

    // function setMapName(uint256 _id, string memory _value) public {
    //     nameMap[_id] = _value;
    // }
    //---------

    //struct
    // struct contact{
    //     string name;
    //     string phone;
    //     bool isfriend;
    // }

    // contact[] public contacts;

    // function addContact(string memory _name,string memory _phone,bool _isfriend) public{
    //     contacts.push(contact(_name,_phone,_isfriend));
    // }

    // function getContact(uint _id) public view returns(string memory,string memory ,bool ){
    //     contact storage _contact=contacts[_id];
    //     return (_contact.name,_contact.phone,_contact.isfriend);
    // }
    // function makeFriend(uint _id) public{
    //     contact storage _contact=contacts[_id];
    //     _contact.isfriend=true;
    // }

    //events
    //  string public message="helo";

    //  event messageSent(address indexed _user,string  _message);

    //  function sendMessage(string memory _message) public {
    //     emit messageSent(msg.sender,_message);
    //  }

    //payment
    uint public amount;
    uint amountNotSent = 0;

    receive() external payable {
        amount = msg.value;
    }

    fallback() external payable {
        amountNotSent++;
    }

    function transfer(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed");
    }
}
