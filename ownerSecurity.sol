pragma solidity ^0.5.1;

contract MyContract{//like a class
    
    uint256 public peopleCount;
    mapping(uint => Person) public people; //uint = key, person = value
    
    address owner; //data type like an account
    
    modifier onlyOwner(){//write the logic such that whoever is calling this function is the owner
        require (msg.sender == owner); //msg == function metadata; msg.sender == account that called the function
        //anything inside the require, if it is true, it passes. if it is false, error.
        _;
    }
    
    struct Person{ //declare new data type called person whose gonna have a first name and last name
        uint _id;
        string _firstname;
        string _lastname;
    }
        
    /* uint256 openingTime = 1628243035; //get current epoch time
    
    modifier onlyWhileOpen(){//write the logic such that whoever is calling this function satisfies requirement
        require (block.timestamp >= openingTime);  //if after opening time, you can call this function
        //block.timestamp is the timestamp of the current block in the chain
        _;
    }*/
    
    constructor() public{
        owner = msg.sender; //msg.sender is the account that deploys the smart contract and set it to owner status
    }
    
    function addPerson(string memory _firstname, string memory _lastname) public onlyOwner {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
    }
    
    function incrementCount() internal{ //opposite of public
        peopleCount +=1;
    }
}
