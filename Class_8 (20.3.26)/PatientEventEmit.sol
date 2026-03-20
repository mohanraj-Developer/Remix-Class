// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientData{
    struct Patient{
        uint id; string name; string disease;
    }
    mapping (uint => Patient) public P1;

    // Event (log)
    event PatientAdd(uint id, string name, string disease);
    // set fun for adding patient details:
    function addPatient (uint _id, string memory _name, string memory _disease) public {
        P1[_id] = Patient(_id,_name, _disease);
        // emit event(log)
        emit PatientAdd(_id, _name, _disease);
    }

    //get Function details:
    function getPatient(uint _id) public view returns(uint, string memory, string memory){
        Patient memory p = P1[_id];
        return(p.id, p.name, p.disease);
    }
}