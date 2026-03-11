// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract StudentDetails{
    struct Student{ string name; 
                    int id; 
                    string course; 
                    string duration;
                }
    Student student1;

    function setStudentDetail( string memory _name, int _id, string memory _course, string memory _duration) public{
        student1 = Student(_name, _id, _course, _duration);
    }
    function getStudentDetail() public view returns( string memory, string memory){
        return (student1.course, student1.duration);
    }
}

contract Library{
    struct Book{ 
                string title;
                string author;
                uint id;
                string publisher;
                bool isAvaiable;
    }
    Book book;
    function setDetails() public {
        book = Book("Blockchain", "MJ", 256, "HV", true);
    }
    function getTitle() public view returns (string memory _title){
        return book.title;
    }
    function AllDetails() public view returns (string memory, string memory, uint, bool){
        return (book.author, book.publisher, book.id, book.isAvaiable);
    }
    function check() public view returns (bool){
        if ( keccak256(abi.encodePacked (book.title)) == keccak256(abi.encodePacked("Blockchain"))){
            return true;
        }
        else {
            return  false;
        }
    }

}