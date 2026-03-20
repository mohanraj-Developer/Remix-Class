// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientDetails{

    // Owner Address
    address public Owner;

    constructor (){
        Owner = msg.sender;
    }
    enum Checkup{regular, irregular}
    struct Patient{
        uint id; string name; string bioDetails; Checkup status; 
    }
    mapping (uint => Patient) P1;
    modifier onlyOwner(){
        require(msg.sender == Owner, ' Not Owner');
        _;
    }
    function addPatient(uint _id, string memory _name, string memory _bio, Checkup _status) public onlyOwner{
        require(_id !=0," invalid ID");
        P1[_id] = Patient(_id,_name,_bio,_status);
    }
    function getPatient(uint _id) public view returns(uint, string memory, string memory, Checkup) {
        Patient memory p = P1[_id];
        return(p.id, p.name, p.bioDetails, p.status);
    }
    function updatePatient(uint _id, string memory _name, string memory _bio, Checkup _status) public onlyOwner{
        require(P1[_id].id !=0, 'Not found');
        P1[_id] = Patient(_id,_name,_bio,_status);
    }
}