// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arrayEg{
    string[]  names;                                      // declare an array of strings
    uint[]  age;                                          // declare an array of uints

    function student(string memory _name, uint  _age) public{
        names.push(_name);                                      // add a new name to the end of the array
        age.push(_age);                                         // add a new age to the end of the array
    }
    function studentDetails(uint _index) public view returns( string memory, uint){
        return(names[_index], age[_index]);
    }
}

contract StudentEnroll{
    struct Student{ uint rollno; string names; uint age; string course;}
    Student [] students;
    function Details(uint _rollno, string memory _name, uint _age, string memory _course) public{
        students.push(Student(_rollno, _name, _age, _course));
    }
    function StudentDetails(uint index) public view returns (uint, string memory, uint, string memory){
        return (students[index].rollno, students[index].names, students[index].age, students[index].course
        );
    }
}