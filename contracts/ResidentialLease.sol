// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Structs.sol";

contract ResidentialLease {
    
    mapping(uint => NextBlockProperty) public properties;

    uint public numberOfProperties = 0;

    function createProperty(address _owner, uint _price, uint _deposit, uint _leaseTerm, string memory _metaData) public returns (uint) {
            NextBlockProperty storage property = properties[numberOfProperties];
            property.owner = _owner;
            property.price = _price;
            property.deposit = _deposit;
            property.leaseTerm = _leaseTerm;
            property.metaData = _metaData;
            property.state = NextBlockPropertyState.Available;

            numberOfProperties++;

            return numberOfProperties - 1;
    }

    function listProperty(uint _id) public {
        require(msg.sender == properties[_id].owner, "You are not the owner.");
        require(properties[_id].state == NextBlockPropertyState.Unavailable, "You cannot list this property.");
        properties[_id].state = NextBlockPropertyState.Available;
    }

    function unlistProperty(uint _id) public {
        require(msg.sender == properties[_id].owner, "You are not the owner.");
        require(properties[_id].state == NextBlockPropertyState.Available, "You cannot unlist this property.");
        properties[_id].state = NextBlockPropertyState.Unavailable;
    }

    function initiateRentalApplication(uint _id, string memory _supportingDoc, uint _startDate) public{
        NextBlockProperty storage property = properties[_id];
        property.supportingDoc = _supportingDoc;
        property.startDate = _startDate;
        property.endDate = _startDate + property.leaseTerm * 60 * 60 * 24 * 30;
        property.tenant = msg.sender;
        property.state = NextBlockPropertyState.Pending;
    }


    function approveRentalApplication (uint _id) public {
        require(msg.sender == properties[_id].owner, "You are not the owner.");
        properties[_id].state = NextBlockPropertyState.Approved;
    }

    function rejectRentalApplication (uint _id) public {
        require(msg.sender == properties[_id].owner, "You are not the owner.");
        properties[_id].state = NextBlockPropertyState.Available;
    }

    function makePayment(uint _id, bool _rental) public payable{
        NextBlockProperty storage property = properties[_id];
        uint amount = _rental ? property.price : property.deposit;
        (bool sent, ) = payable(property.owner).call{value: amount}("");
        require(sent, "Transaction failed.");
    }

    function getTenant(uint _id) view public returns (address){
        return (properties[_id].tenant);
    }


    function getProperties() public view returns (NextBlockProperty[] memory) {
        NextBlockProperty[] memory allProperties = new NextBlockProperty[](numberOfProperties);
        for (uint i = 0; i < numberOfProperties; i++) {
            NextBlockProperty storage item = properties[i];
            allProperties[i] = item;
        }
        return allProperties;
    }

    // function initiateTenantTransfer(uint _id, address newTenant, string memory date) public {
    //     properties[_id].tenant = newTenant;
    //     date = "";
    // }

    




}