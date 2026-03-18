// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// struct mapping eg:
contract ContactDetails{
    struct contact{
                    string name;
                    uint phNo;
                    string email;
                    string Address;
    }

    mapping (uint => contact) public Contacts;

    function addContact(uint key,string memory _name,uint _phNo,string memory _email,string memory _Address) public{
        Contacts[ key].name = _name;
        Contacts[ key].phNo = _phNo;
        Contacts[ key].email = _email;
        Contacts[ key].Address = _Address;
    }
    function getContact(uint key) public view returns(string memory, uint, string memory, string memory){
        return (Contacts[key].name, Contacts[key].phNo, Contacts[key].email, Contacts[key].Address);
    }
}

contract TLParticipants{
    struct Participant {
        string name;
        string course;
        uint phNo;
        bool fee;
    }

    mapping (uint => Participant) P1;

    function AddMem(uint key, string memory _name, string memory _course, uint _Phno, bool _fee) public {
        P1[key] = Participant(_name, _course, _Phno, _fee);
    }
    
    function getMem(uint key) public view returns(string memory, string memory, uint, bool){
        Participant memory p = P1[key];
        return (p.name, p.course, p.phNo, p.fee);
    }
} 

// mapping using string uint:

contract mappingAddress{
    mapping (address => uint) private Add;

    function setNumber(uint256 num)  external {
        require(num != 13, " 13 is not Favorite number");
        Add[msg.sender] = num;
    }

    function getNum() external view returns (uint256) {
        return Add[msg.sender];
    }
}

// address payable 

contract money{
    address MT = payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    function getMoney() public payable {}

    function transferMoney() public{
        uint amount = address(this).balance;
       (bool success, ) = MT.call{value: amount}("");

        require(success, "Transfer failed");
    }
}