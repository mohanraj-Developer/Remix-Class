// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDetail{
    struct Student{
        uint id; string name; uint mark;
    }
    mapping (uint => Student) S1;
    function addStudent(uint _id, string memory _name, uint _mark) public {
        S1[_id] = Student(_id,_name,_mark);
    }
    function getStudent(uint _id) public view returns(string memory){
        if(S1[_id].mark >= 50){
            return "Pass";
        }
        else{
            return "Fail";
        }
    }
}