


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract Struct{


    struct Employee {
        string name;
        uint pay;
    }

    Employee employee = Employee({
        name: "name",
        pay: 123
    });

    function getFirstEmployee() public view returns (Employee memory){
        return employee;
    }

    Employee employee2 = Employee("name2", 1234);

    function getSecondEmployee() public view returns(Employee memory){
        return employee2;
    }



}