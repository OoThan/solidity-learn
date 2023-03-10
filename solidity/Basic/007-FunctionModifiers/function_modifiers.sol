pragma solidity >=0.4.16 <0.9.0;

contract Owner {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier costs(uint price) {
        if (msg.value >= price) {
            _;
        }
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddress;

    uint price;
    constructor(uint initialPrice) {
        price = initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddress[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}
