// *PatienceManagement Struct enum Mapping concept*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientData {

    // Enum for checkup status
    enum CheckupStatus { NotRegular, Regular }

    // Struct
    struct Patient {
        uint id;
        string name;
        string diseaseDescription;
        CheckupStatus status;
    }

    // Mapping (Patient ID → Patient Struct)
    mapping(uint => Patient) public patients;

    // Set Function
    function setPatient(
        uint _id,
        string memory _name,
        string memory _diseaseDescription,
        CheckupStatus _status
    ) public {
        patients[_id] = Patient(_id, _name, _diseaseDescription, _status);
    }

    // Get Function
    function getPatient(uint _id) 
        public view 
        returns(uint, string memory, string memory, CheckupStatus) 
    {
        Patient memory p = patients[_id];
        return (p.id, p.name, p.diseaseDescription, p.status);
    }
}