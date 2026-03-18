// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructEg{
    struct Student{
                    string name;
                    uint id;
                    string course;
                    year studentYear; 
                    bool Completion;
    }
    enum year{ First, Secound , Third}
    year studentYear; 

    Student [] students;

    function AddStudents(string memory _name, uint _id, string memory _course , year _studentYear, bool _completion) public{
        students.push(Student(_name, _id, _course, _studentYear, _completion));
    }

    function getStudent(uint index) public view returns(string memory, uint, string memory, year, bool){
        return (students[index].name, students[index].id, students[index].course, students[index].studentYear, students[index].Completion);
        
    }
}