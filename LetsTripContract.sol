pragma solidity ^0.5.2;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract LetsTripContract is ERC20 {
    
    string public constant name = "Let's Trip Token";
    string public constant symbol = "LST";
    uint8 public constant decimals = 18;

    /**
     * Constructor of the Let's Trip token. 
     * Mints totalSupply count of tokens and sets owner of them to deployer.
     */ 
    constructor () public {
        _mint(msg.sender, 500000000 * 10**uint(decimals));
    }
    
}