pragma solidity 0.4.24;


import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


/**
 * @title XUANToken
 * @dev based on securely audited code from OpenZeppelin v1.10.0.
 * ref: https://github.com/OpenZeppelin/openzeppelin-solidity/blob/eb4dfea6e9a1cd849cd2e12dd153f03910695f58/contracts/examples/SimpleToken.sol
 */
contract XUANToken is StandardToken {

  string public constant name = "XUAN Token"; // solium-disable-line uppercase
  string public constant symbol = "XUAN"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = (10 ** 9) * (10 ** uint256(decimals));

  /**
   * @dev distribute initial tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
  }

}
