pragma solidity 0.5.1;

contract MyContract{//function that accepts ether
    mapping(address => uint256)  public balances;
    address payable wallet; //we want to send funds to this wallet
    
    constructor(address payable _wallet) public{
        wallet = _wallet;
    }
    
    function() external payable{ //only be called outside the smart contract
        buyToken();
    }
    
    function buyToken() public payable{//payable = declare function accepts ether
        //buy a token 
        balances[msg.sender] += 1;  //add one token to his balance
        
        //send ether to wallet
        wallet.transfer(msg.value); //msg.value shows value of ether sent in
        
        
        
    }
    
    
}
