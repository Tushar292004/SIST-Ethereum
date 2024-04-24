// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicArray {
    int[] private arr;

    function addData (int num) public {
        arr.push(num);
    }

    function getData () public  view  returns (int[] memory) {
        return arr ;
    }

    function searchData (int num) public  view  returns (bool) {
        uint i;
        for (i=0; i<=arr.length ; i++ ) {
            if (arr[i] == num){ 
                return true;
                }
        }

        if (i>=arr.length){
            return false;
        }
        
    }

    function getSum() public view returns (int) {
    uint i;
    int sum = 0;
    for (i = 0; i < arr.length; i++) {
        sum = sum + arr[i];
    }
    return sum;
}
    
}