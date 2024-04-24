// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract mapping_example { 
    struct student {
        string name;
        string subject;
        int marks;
    }

    mapping (address => student) result;
    address[] student_result;

    function addValues() public {
        student storage newStudent  = result[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4];
        newStudent.name = "Tushar";
        newStudent.subject = "Solidity";
        newStudent.marks = 90;
        student_result.push(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function getResult() public  view returns (address[] memory ) {
        return student_result;
    }

    function countStudents() public  view returns (uint) {
        return  student_result.length ;
    }
}