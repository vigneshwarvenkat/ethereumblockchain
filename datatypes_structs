pragma solidity ^0.5.1;

contract MyContract{//like a class
    string public constant stringValue = "my Value"; //variable global to all contracts
    bool public myBool = true;
    int public myInt = -1; //singed
    uint public myUint = 1; //unsigned
    uint8 public myUint8 = 8; //8-bit integer
    uint256 public myUint256 = 999;
    
    enum State {Waiting, Ready, Active} //enumerated list to keep track of set list of things
    //see what the current state is 
    State public state;
    
    constructor() public{
        state = State.Waiting; // setting the default state to Waiting
    }
    
    function activate () public{  //update state to active
        state = State.Active; 
        
    }
    
    function isActive() public view returns(bool){  //see if the state is active right now; view only; returns true/false
        return state == State.Active;
    }
    
    Person[] public people; //Person is an array that contains these people structs
    
    uint256 public peopleCount;
    
    struct Person{ //declare new data type called person whose gonna have a first name and last name
    uint _id;
        string _firstname;
        string _lastname;
    }
    
    function addPerson(string memory _firstname, string memory _lastname) public {
        people.push(Person(_firstname, _lastname));//push a new instance of this Person struct and pass in the first and last name attributes
        peopleCount +=1;
        
    }
    
    uint256 public peopleCount2;
    mapping(uint => Person) public people; //uint = key, person = value
    
    function addPerson2(string memory _firstname, string memory _lastname) public {
        peopleCount2 +=1;
        people[peopleCount2] = Person(peopleCount2, _firstname, _lastname);

        
        
    }  

}
