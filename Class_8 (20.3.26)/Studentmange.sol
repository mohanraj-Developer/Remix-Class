// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentManagement{
    // Owner Address
    address public Owner;
    constructor (){
        Owner = msg.sender;
    }
    //   Student data in Struct
    struct Student{
        uint id; string  name; uint age;
    }
    // Mapping for Store Student data
    mapping (uint => Student)   students;

    // Using Modifier to check condition  
    modifier OnlyOwner(){
        require(msg.sender == Owner, 'Not Owner');
        _;
    }
    // Add students Details and using OnlyOwner as Modifier 
    function addStudents(uint _id, string memory _name, uint _age) public OnlyOwner{
        require(_id > 0, 'Invalid ID');
        students[_id] = Student(_id,_name,_age);
    }
    // Get Student Details using Id
    function getStudent(uint _id) public view returns (uint, string memory, uint){
        Student memory s = students[_id];
        return (s.id, s.name, s.age);
       }
    // update Student deatails using id and using modifier as OnlyOwner
    function updateStudent(uint _id, string memory _name, uint _age) public OnlyOwner{
        require(students[_id].id !=0,'Student not found');
        students[_id] = Student(_id,_name,_age);
    }
}