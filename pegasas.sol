// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract pegasas is ERC20{

    address public admin;

    constructor() ERC20('pegasas', 'PGS'){
        _mint(msg.sender, 100000 * 10 ** 18); // Goes upto 18 decimal places
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external{
        require(msg.sender == admin, "Only Admin");
        _mint(to, amount);
    }

    function burn(uint256 amount) external{
        _burn(msg.sender, amount);
    }
}