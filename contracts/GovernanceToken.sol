pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes{
    uint public maxSupply = 10**21;
    constructor() 
        ERC20("GovernanceToken", "GT")
        ERC20Permit("GovernanceToken")
    { 
        _mint(msg.sender, maxSupply);
    }
    

}