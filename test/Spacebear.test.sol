// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../src/Spacebear.sol";

contract SpacebearTest is Test {
    Spacebear spacebear;

    function setUp() public {
        address owner = address(this);
        spacebear = new Spacebear(owner);
    }

    function testNameIsSpacebear() public {
        assertEq(spacebear.name(), "Spacebear");
    }
}
