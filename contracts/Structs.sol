// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

enum NextBlockPropertyState{
    Available,      // Open for application
    Unavailable,    // Not open for application
    Pending,        // Pending approval / confirmation
    Approved,       // Pending move-in
    Occupied        // Between move-in and move-out
}

struct PropertyMetaData {
    string title;
    string description;
    string location;
    string image;
}

struct NextBlockProperty {
    address owner;
    uint price;
    uint deposit;
    uint leaseTerm; // in months
    NextBlockPropertyState state;
    string metaData;
    address tenant;
    string supportingDoc;
    uint startDate;
    uint endDate;
}