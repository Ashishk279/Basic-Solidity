// SPDX-License-Identifier: MIT
pragma solidity >0.8.13 <=0.8.21;

contract Enum {
    enum Status {
       Pending,
       Shipped,
       Accepted,
       Canceled,
       Rejected
    }

    Status public status;

    function get() public view returns(Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}