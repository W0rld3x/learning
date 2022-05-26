pragma solidity 0.8.4;

contract Whitelist {
    uint8 public maxWhitelistAddresses;
    mapping(address => bool) public whitelistAddresses;

    uint8 public numOfWhitelistAddress;

    constructor(uint8 _maxWhitelistAddresses) {
        maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistAddresses[msg.sender], "Address already Whitelisted");
        require(
            numOfWhitelistAddress < maxWhitelistAddresses,
            "Maximum whitelist allowed"
        );
        whitelistAddresses[msg.sender] = true;
        numOfWhitelistAddress += 1;
    }
}
