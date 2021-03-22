pragma solidity ^0.5.2;

contract Ownable {
    address public owner; //The address of the contract owner is kept in a state variable

    constructor() public {
        owner = msg.sender; //The contract owner is assigned at construction
    }

    modifier onlyOwner() {
        require(msg.sender == owner); //#Check if the function caller using this modifier is the owner
        _;
    }
}
