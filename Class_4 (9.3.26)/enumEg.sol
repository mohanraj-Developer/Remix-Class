// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumEg{
    enum School{student, teacher, admin, principal}
    School public members;
    function setMembers() public{
        members = School.student;
    }
}

contract Pizza{
    enum PizzaSize{ small, medium, Large}
    PizzaSize choice;
    PizzaSize constant defaultChoice = PizzaSize.medium;
    function setLarge() public {
        choice = PizzaSize.Large;
    }
    function getchoice() public view returns(PizzaSize){
        return choice;
    }
    function getDefault() public pure returns (PizzaSize){
        return defaultChoice;
    }
}


