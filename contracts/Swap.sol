// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {IERC20} from "./IERC20.sol";

contract Swap {
    IERC20 tokenA;
    IERC20 tokenB;

    constructor(address _tokenA, address _tokenB) {
        tokenA = IERC20(_tokenA);
        tokenB = IERC20(_tokenB);
    }

    function swapA(uint256 _amount) external {
        if (tokenA.balanceOf(msg.sender) >= _amount) {
            revert();
        }
        tokenA.transferFrom(msg.sender, address(this), _amount);
        tokenB.transfer(msg.sender, _amount);
    }
}
