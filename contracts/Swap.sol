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
}
