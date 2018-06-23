pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";


contract TestAdoption{

	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	function testUserCanAdoptPet() public {
		uint returnedID = adoption.adopt(6);

		uint expected = 6;

		Assert.equal(returnedID, expected, "Adoption of pet 6 should be recorded");
	}

	function testGetAdopterByPetID() public {
		address expected = this;
		address adopter = adoption.getAdopters()[6];
		Assert.equal(expected, adopter, "Owner of pet 6 should be recoreded");
	}


	function testGetAdopterAddressByPetIDINArray() public{
		address expected = this;
		address[16] memory adopters = adoption.getAdopters();
		Assert.equal(adopters[6], expected,"Owner of pet ID 6 should be recorded");
	}

}