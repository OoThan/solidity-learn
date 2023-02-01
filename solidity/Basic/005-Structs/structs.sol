pragma solidity >=0.4.16 <0.9.0;

contract StructBook {
    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book book;

    function setBook() public {
        book = Book("Solidity", "someone", 1);
    }

    // function getBook() public view returns (Book) {
    //     return book;
    // }

    function getBookId() public view returns (uint) {
        return book.book_id;
    }
}
