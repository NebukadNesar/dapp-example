pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Random.sol";

contract TestRandom{

	Random random = Random(DeployedAddresses.Random());

	function testGetRandomAddress() public {
		address randomAdress = random.getRamdomAddress(0);
		address owner = this;
		Assert.notEqual(owner, randomAdress, "Address is not the owner.");
	}

}
