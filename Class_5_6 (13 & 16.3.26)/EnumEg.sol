//Enum Example

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample1 {

    enum Status { Pending, Approved, Rejected }

    Status  currentStatus;

    // Set status functions
    function setPending() public {
        currentStatus = Status.Pending;                 //current Status --> Data Type & Status --> var. 
    }

    function setApproved() public {
        currentStatus = Status.Approved;
    }

    function setRejected() public {
        currentStatus = Status.Rejected;
    }

    
}


contract EnumExample2 {

    // Enum
    enum Status { Pending, Shipped, Delivered }

    // Variable
    Status public orderStatus;

    // Set Function
    function setStatus(Status _status) public {
        orderStatus = _status;
    }

    // Get Function
    function getStatus() public view returns(Status) {
        return orderStatus;
    }
}