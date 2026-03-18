// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientDetails{
    struct patient{
                uint id;
                string name;
                string Bio;
                bool checkup;
    }

    mapping (uint => patient) P1;

    function setDetails( uint _id, string memory _name, string memory _bio, bool _checkup) public{
        P1 [_id] = patient(_id, _name, _bio, _checkup);
    }

    function getDetails(uint _id) public view returns (uint, string memory, string memory, bool){
        patient memory p = P1[_id];
        return (p.id, p.name, p.Bio, p.checkup);
    }
}
