// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Types {
    int public num1;

    constructor()  {
        num1 = 10;
    }

    function getResults() public pure returns (int) {
        int num2 = 20;
        int num3 = 30;
        int result = num2 + num3;
        return  result ;
    }

    struct Book {
        string name;
        string writer;
        int id;
        bool available;
    }

    Book book1;
    Book book2 = Book("Dapps", "Tushar", 2, false);

    function set_details() public {
        book1 = Book("Ethereum", "Suman", 3, true);
    }

    function get_book_1() public view returns (string memory, string memory, int, bool){
        return (book1.name, book1.writer, book1.id, book1.available);
    }

    function get_book_2() public view returns (string memory, string memory, int, bool){
        return (book2.name, book2.writer, book2.id, book2.available);
    }
}