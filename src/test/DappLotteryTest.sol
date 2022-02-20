//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../DappLottery.sol";
import "./mocks/LinkToken.sol";
import "./mocks/MockVRFCoordinator.sol";

contract DappLotteryTest is DSTest {
    DappLottery public dappLottery;
    MockVRFCoordinator public mockvrfcoordinator;
    LinkToken public linkToken;

    bytes32 public keyHash;
    uint256 public fee;

    function setUP() public {
        linkToken = new LinkToken();
        mockvrfcoordinator = new MockVRFCoordinator(address(linkToken));
        dappLottery = new DappLottery(
            keyHash,
            address(mockvrfcoordinator),
            address(linkToken),
            fee
        );
    }
}
