// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDetails{
    struct Student{ string name; 
                    uint id; 
                    uint age;
                }
    Student public student1;

    function setStudentDetail( string memory _name, uint _id, uint _age) public{
        student1 = Student(_name, _id, _age);
    }
    function getStudentDetail() public view returns( string memory, uint, uint){
        return (student1.name, student1.id, student1.age);
    }
}

// Struct with mapping:
contract StudentMapping{
    struct Student{ 
                    uint id; 
                    string name; 
                    uint age;
                }
    mapping (uint => Student) public student1;


    function setStudentDetail(  uint _id,string memory _name, uint _age) public{
        student1[_id] = Student(_id,_name, _age);
    }
    function getStudentDetail(uint _id) public view returns( string memory, uint, uint){
        Student memory s1 = student1[_id];
        return (s1.name, s1.id, s1.age);
    }
}