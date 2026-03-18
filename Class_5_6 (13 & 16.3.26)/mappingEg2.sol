// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TLCParticipants{
    address public Owner;

    constructor () {
        Owner = msg.sender;
    }

    modifier onlySL(){
        require(msg.sender == Owner);
        _;
    }

    struct Participant{
        string name;
        string course;
        uint phNo;
        bool fee;
    }

    mapping (uint => Participant) Pat1;

    function setpat(uint key, string memory _name, string memory _course, uint _phno, bool _fee) public {
        Pat1[key] = Participant(_name, _course, _phno, _fee);
    }

    function getpat(uint key) public view returns(string memory, string memory, uint, bool){
       // return (Pat1[key].name, Pat1[key].course, Pat1[key].phNo, Pat1[key].fee);           //return (Pat1[key]);
        
        Participant memory p1 = Pat1[key];
        return (p1.name, p1.course, p1.phNo, p1.fee);
    }
}